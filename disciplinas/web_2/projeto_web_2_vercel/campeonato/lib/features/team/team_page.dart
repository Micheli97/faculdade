import 'package:campeonato/features/team/cadastrar_novo_time_page.dart';
import 'package:campeonato/features/team/controller/team_controller.dart';
import 'package:campeonato/features/team/edit_time_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class TeamPage extends StatefulWidget {
  const TeamPage({super.key});

  @override
  State<TeamPage> createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {
  final _teamController = GetIt.I.get<TeamController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Times",
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
            [_teamController.getTeams(), _teamController.getTotalTeams()]),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done &&
              snapshot.hasData) {
            return Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Divider(color: Colors.black.withOpacity(0.3)),
                const SizedBox(height: 10),
                Observer(
                  builder: (context) => Flexible(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: _teamController.teams.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              bottom: 15, left: 15, right: 15),
                          child: Dismissible(
                            background: Container(
                              color: Colors.red,
                              alignment: Alignment.centerRight,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Text(
                                    "Excluir",
                                    style: TextStyle(color: Colors.white),
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
                                _teamController.teams[index].id),
                            onDismissed: (DismissDirection direction) async {
                              await _teamController.deleteTeam(
                                  idTeam: _teamController.teams[index].id);
                              setState(() {});
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey.shade100,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: CircleAvatar(
                                      radius: 15,
                                      backgroundImage: NetworkImage(
                                          _teamController.teams[index].photo),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        _teamController.teams[index].name,
                                        style: const TextStyle(
                                            fontFamily: "Roboto",
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(height: 5),
                                      Row(
                                        children: [
                                          const Text(
                                            "Técnico :",
                                            style: TextStyle(
                                                fontFamily: "Roboto",
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          const SizedBox(width: 10),
                                          Text(
                                            _teamController.teams[index].coach,
                                            style: const TextStyle(
                                                fontFamily: "Roboto",
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      children: [
                                        IconButton(
                                            onPressed: () async {
                                          final response =    await Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: ((context) =>
                                                      EditTeamPage(
                                                        teamEntity:
                                                            _teamController
                                                                .teams[index],
                                                      )),
                                                ),
                                              );

                                              if(response ){
                                                setState(() {
                                                  
                                                });
                                              }
                                            },
                                            icon: const Icon(
                                              Icons.edit,
                                              color:
                                                  Color.fromARGB(255, 1, 54, 3),
                                            )),
                                        const Text("Editar",
                                            style: TextStyle(
                                                fontFamily: "Roboto",
                                                color: Color.fromARGB(
                                                    255, 1, 54, 3),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300)),
                                      ],
                                    ),
                                  )
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
            );
          } else if (snapshot.connectionState == ConnectionState.done &&
              (snapshot.hasError || !snapshot.hasData)) {
            return const Center(
                child: Text("Não foi possível carregar os dados"));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: Observer(
        builder: (context) => Material(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: _teamController.ammountTeamsRegister < 8
              ? GestureDetector(
                  onTap: () async {
                    final response = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CadastrarNovoTimePage(),
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
                            "Cadastrar novo time",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : const SizedBox(),
        ),
      ),
    );
  }
}
