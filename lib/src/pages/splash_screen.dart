import 'package:flutter/material.dart';
import 'package:propiedadhorizontal/src/pages/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    var d = const Duration(seconds: 3);
    Future.delayed(d, () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(seconds: 1), // Duración de la animación
          pageBuilder: (_, __, ___) => HomeScreen(), // Widget de destino
          transitionsBuilder: (_, animation, __, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/Pantalla_Carga.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(50),
            child: Align(
              alignment: Alignment.bottomCenter,
            ),
          )
        ],
      ),
    );
  }
}
