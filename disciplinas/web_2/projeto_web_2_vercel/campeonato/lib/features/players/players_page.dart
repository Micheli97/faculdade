import 'package:campeonato/features/players/cadastrar_novo_jogador_page.dart';
import 'package:campeonato/features/players/controller/player_controller.dart';
import 'package:campeonato/features/players/editar_jogador_page.dart';
import 'package:campeonato/features/team/controller/team_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class PlayerPage extends StatefulWidget {
  const PlayerPage({super.key});

  @override
  State<PlayerPage> createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  final _playerController = GetIt.I.get<PlayerController>();
  final _teamController = GetIt.I.get<TeamController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Jogadores",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      body: FutureBuilder(
        future: Future.wait(
            [_playerController.getPlayers(), _teamController.getTeams()]),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done &&
              snapshot.hasData) {
            return Observer(
                builder: (context) => Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 80,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: _teamController.teams.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(15),
                                child: GestureDetector(
                                  onTap: () async {
                                    await _playerController.getPlayerByTeamID(
                                        idTeam:
                                            _teamController.teams[index].id);
                                  },
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundColor: Colors.white,
                                    backgroundImage: NetworkImage(
                                        _teamController.teams[index].photo),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        _playerController.players.isEmpty
                            ? const Center(
                                child: Text("Nenhum jogador cadastrados"))
                            : Observer(
                                builder: (context) => Flexible(
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: _playerController.players.length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 15, left: 15, right: 15),
                                        child: Dismissible(
                                          background: Container(
                                            color: Colors.red,
                                            alignment: Alignment.centerRight,
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 16),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: const [
                                                Text(
                                                  "Excluir",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                SizedBox(width: 5),
                                                Icon(
                                                  Icons.delete,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                          ),
                                          key: ValueKey<String>(
                                              _playerController
                                                  .players[index].idTeam),
                                          onDismissed: (DismissDirection
                                              direction) async {
                                            await _playerController
                                                .deletePlayer(
                                                    idTeam: _playerController
                                                        .players[index].idTeam);
                                            setState(() {});
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.blueGrey.shade100,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(15),
                                                  child: CircleAvatar(
                                                    radius: 15,
                                                    backgroundImage:
                                                        NetworkImage(
                                                            _playerController
                                                                .players[index]
                                                                .photo),
                                                  ),
                                                ),
                                                const SizedBox(width: 10),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      _playerController
                                                          .players[index].name,
                                                      style: const TextStyle(
                                                          fontFamily: "Roboto",
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    const SizedBox(height: 5),
                                                    Row(
                                                      children: [
                                                        const Text(
                                                          "Posição :",
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  "Roboto",
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                        ),
                                                        Text(
                                                          _playerController
                                                              .players[index]
                                                              .position,
                                                          style: const TextStyle(
                                                              fontFamily:
                                                                  "Roboto",
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                        ),
                                                        const SizedBox(
                                                            width: 10),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                const Spacer(),
                                                // Padding(
                                                //   padding:
                                                //       const EdgeInsets.all(10),
                                                //   child: Column(
                                                //     children: [
                                                //       IconButton(
                                                //           onPressed: () async {
                                                //             final response =
                                                //                 await Navigator
                                                //                     .push(
                                                //               context,
                                                //               MaterialPageRoute(
                                                //                 builder:
                                                //                     ((context) =>
                                                //                         const EditarJogadorPage()),
                                                //               ),
                                                //             );

                                                //             if (response) {
                                                //               setState(() {});
                                                //             }
                                                //           },
                                                //           icon: const Icon(
                                                //             Icons.edit,
                                                //             color:
                                                //                 Color.fromARGB(
                                                //                     255,
                                                //                     1,
                                                //                     54,
                                                //                     3),
                                                //           )),
                                                //       const Text("Editar",
                                                //           style: TextStyle(
                                                //               fontFamily:
                                                //                   "Roboto",
                                                //               color: Color
                                                //                   .fromARGB(255,
                                                //                       1, 54, 3),
                                                //               fontSize: 12,
                                                //               fontWeight:
                                                //                   FontWeight
                                                //                       .w300)),
                                                //     ],
                                                //   ),
                                                // )
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              )
                      ],
                    ));
          } else if (snapshot.connectionState == ConnectionState.done &&
              (snapshot.hasError || !snapshot.hasData)) {
            return const Center(
                child: Text("Não foi possível carregar os dados"));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: Material(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: GestureDetector(
            onTap: () async {
              final response = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CadastrarNovoJogador(),
                ),
              );
              if (response) {
                setState(() {});
              }
            },
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Cadastrar novo jogador",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
