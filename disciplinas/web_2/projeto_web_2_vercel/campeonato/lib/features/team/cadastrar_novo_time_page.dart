import 'package:campeonato/core/utils/contants.dart';
import 'package:campeonato/core/widgets/global_snackbar_widget.dart';
import 'package:campeonato/core/widgets/input_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import 'controller/team_controller.dart';

class CadastrarNovoTimePage extends StatefulWidget {
  const CadastrarNovoTimePage({super.key});

  @override
  State<CadastrarNovoTimePage> createState() => _CadastrarNovoTimePageState();
}

class _CadastrarNovoTimePageState extends State<CadastrarNovoTimePage> {
  final TextEditingController _nomeTeam = TextEditingController();
  final TextEditingController _photo = TextEditingController();
  final TextEditingController _coach = TextEditingController();
  final TextEditingController _cidade = TextEditingController();
  final TextEditingController _website = TextEditingController();

  final _teamController = GetIt.I.get<TeamController>();
  @override
  void initState() {
    _teamController.teamRegister = null;
    super.initState();
  }

  @override
  void dispose() {
    _nomeTeam.dispose();
    _photo.dispose();
    _coach.dispose();
    _cidade.dispose();
    _website.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Cadastrar novo time",
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
              children: [
                InputWidget(controller: _nomeTeam, hintText: "Nome do time"),
                const SizedBox(height: 16),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                        child: InputWidget(
                            controller: _cidade, hintText: "Cidade")),
                    const SizedBox(width: 16),
                    Flexible(
                        child: InputWidget(
                            controller: _coach, hintText: "Técnico")),
                  ],
                ),
                const SizedBox(height: 16),
                InputWidget(controller: _website, hintText: "Site"),
                const SizedBox(height: 16),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                        child: InputWidget(
                      controller: _photo,
                      hintText: "Foto",
                      onChanged: (value) {
                        _teamController.setTeamRegister(photo: value.trim());
                      },
                    )),
                    Observer(
                      builder: (context) => SizedBox(
                        height: 100,
                        width: 100,
                        child: (_teamController.teamRegister == null ||
                                (_teamController.teamRegister?.photo == null &&
                                    _teamController
                                        .teamRegister!.photo.isEmpty))
                            ? Image.asset(Images.galeria)
                            : Image.network(
                                _teamController.teamRegister!.photo),
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
              child: _teamController.isLoadingRegister
                  ? const CircularProgressIndicator()
                  : Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: GestureDetector(
                        onTap: () async {
                          _teamController.setTeamRegister(
                            city: _cidade.text,
                            coach: _coach.text,
                            name: _nomeTeam.text,
                            website: _website.text,
                            photo: _photo.text,
                          );

                          if (_teamController.checkFormIsValid) {
                            await _teamController.registerTeam().then(
                                (value) => Navigator.of(context).pop(true));
                          } else {
                            GlobalSnackBar.showErrorSnackBar(
                                title: "Erro ao registrar time",
                                message:
                                    "Todos os campos devem ser preenchidos");
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
