import 'package:campeonato/core/utils/contants.dart';
import 'package:campeonato/core/widgets/global_snackbar_widget.dart';
import 'package:campeonato/core/widgets/input_widget.dart';
import 'package:campeonato/features/players/controller/player_controller.dart';
import 'package:campeonato/features/team/controller/team_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class CadastrarNovoJogador extends StatefulWidget {
  const CadastrarNovoJogador({super.key});

  @override
  State<CadastrarNovoJogador> createState() => _CadastrarNovoJogadorState();
}

class _CadastrarNovoJogadorState extends State<CadastrarNovoJogador> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _photo = TextEditingController();
  final TextEditingController _height = TextEditingController();
  final TextEditingController _weght = TextEditingController();
  final TextEditingController _age = TextEditingController();
  final TextEditingController _position = TextEditingController();
  final TextEditingController _number = TextEditingController();

  final _playerController = GetIt.I.get<PlayerController>();
  final _teamController = GetIt.I.get<TeamController>();

  @override
  void initState() {
    _playerController.selectedNameTeam = "";
    _playerController.selectedTeam = "";
    super.initState();
  }

  @override
  void dispose() {
    _name.dispose();
    _photo.dispose();
    _height.dispose();
    _weght.dispose();
    _age.dispose();
    _position.dispose();
    _number.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Cadastrar novo jogador",
          style: TextStyle(fontFamily: "Roboto", color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(true),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Selecione um time: ",
                    style: TextStyle(
                        fontFamily: "Roboto",
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 80,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _teamController.teams.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(15),
                        child: GestureDetector(
                          onTap: () {
                            _playerController.selectedTeam =
                                _teamController.teams[index].id;
                            _playerController.selectedNameTeam =
                                _teamController.teams[index].name;
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
                Observer(
                    builder: (context) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Text(
                            "Time selecionado: ${_playerController.selectedNameTeam}",
                            textAlign: TextAlign.start,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )),
                InputWidget(controller: _name, hintText: "Nome do jogador"),
                const SizedBox(height: 16),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                        child: InputWidget(
                            controller: _height, hintText: "Altura")),
                    const SizedBox(width: 16),
                    Flexible(
                        child:
                            InputWidget(controller: _weght, hintText: "Peso")),
                    Flexible(
                        child:
                            InputWidget(controller: _age, hintText: "Idade")),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                        child: InputWidget(
                            controller: _position, hintText: "Posição")),
                    const SizedBox(width: 16),
                    Flexible(
                        child: InputWidget(
                            controller: _number, hintText: "Número")),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                        child: InputWidget(
                      controller: _photo,
                      hintText: "Foto",
                      onChanged: (value) {
                        _playerController.setPlayerRegister(photo: value);
                      },
                    )),
                    Observer(
                      builder: (context) => SizedBox(
                        height: 100,
                        width: 100,
                        child: (_playerController.playerRegister == null ||
                                (_playerController.playerRegister?.photo ==
                                        null &&
                                    _playerController
                                        .playerRegister!.photo.isEmpty))
                            ? Image.asset(Images.galeria)
                            : Image.network(
                                _playerController.playerRegister!.photo),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30, left: 15, right: 15),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: GestureDetector(
                  onTap: () async {
                    _playerController.setPlayerRegister(
                      age: _age.text,
                      height: _height.text,
                      name: _name.text,
                      number: _number.text,
                      photo: _photo.text,
                      position: _position.text,
                      weight: _weght.text,
                    );
                    if (_playerController.checkFormIsValid) {
                      await _playerController
                          .registerPlayer()
                          .then((value) => Navigator.of(context).pop(true));
                    } else {
                      GlobalSnackBar.showErrorSnackBar(
                          title: "Erro ao registrar joagador",
                          message: "Todos os campos devem ser preenchidos");
                    }
                  },
                  child: const Text(
                    "Cadastrar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "Roboto",
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
