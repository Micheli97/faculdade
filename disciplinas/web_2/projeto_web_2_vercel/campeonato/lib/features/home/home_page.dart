import 'package:campeonato/core/utils/contants.dart';
import 'package:campeonato/features/authentication/authentication_page.dart';
import 'package:campeonato/features/authentication/controller/authentication_controller.dart';
import 'package:campeonato/features/champions/champions_page.dart';
import 'package:campeonato/features/players/players_page.dart';
import 'package:campeonato/features/team/team_page.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:video_player/video_player.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _authenticationStore = GetIt.I.get<AuthenticationController>();
  late VideoPlayerController _controller;

  @override
  void initState() {
    getShared();

    super.initState();
    _initVideoPlayer();
  }

  void _initVideoPlayer() async {
    _controller = VideoPlayerController.network(URL.videoURL, httpHeaders: {
      "range": "bytes=0-",
    });

    /// Initialize the video player
    await _controller.initialize();

    setState(() {
      _controller.play();
    });
  }

  Future<void> getShared() async {
    SharedPreferences aqui = await SharedPreferences.getInstance();
    final valor = aqui.getString("token");
    debugPrint("Authentication=$valor");
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _controller.pause();
  }

  static const _home =0;
  static const _teams = 1;
  static const _jogadores = 2;
  static const _jogos = 3;
  static const _logout = 4;

  int _selectedIndex = 0;

  void _onItemTapped(int index) async {
    setState(
      () {
        _selectedIndex = index;
      },
    );

    switch (index) {
      case _home:
        _controller.play();
        break;
      case _teams:
        _controller.pause();
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const TeamPage()));
        break;
      case _jogadores:
        _controller.pause();
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const PlayerPage()));
        break;
      case _jogos:
        _controller.pause();
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ChampionsPage()));
        break;

      case _logout:
        _controller.pause();
        showModal(context);
        break;
      default:
    }
  }

  void showModal(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        content: const Text('Deseja sair do aplicativo?'),
        actions: <TextButton>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Não'),
          ),
          TextButton(
            onPressed: () async {
              Navigator.of(context).pop(true);
              await Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const AuthenticationPage())));

              await _authenticationStore.logout();
            },
            child: const Text('Sim'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : const Text('Falha ao carregar o vídeo'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: SvgPicture.asset(
              Images.times,
              color: Colors.white,
              width: 30,
              height: 30,
            ),
            label: 'Times',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: SvgPicture.asset(
              Images.jogadores,
              color: Colors.white,
              width: 30,
              height: 30,
            ),
            label: 'Jogadores',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: SvgPicture.asset(
              Images.jogos,
              color: Colors.white,
              width: 30,
              height: 30,
            ),
            label: 'Campeonato',
          ),
          const BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Icon(Icons.exit_to_app),
            label: 'Sair',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
