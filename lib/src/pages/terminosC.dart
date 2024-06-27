import 'package:flutter/material.dart';
import 'package:propiedadhorizontal/src/pages/PagProveedores/PagPersonaJ/formularioResJ.dart';

class Terminosc extends StatelessWidget {
  const Terminosc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Propiedad Horizontal",
      home: TerminoscPage(),
    );
  }
}

class TerminoscPage extends StatefulWidget {
  const TerminoscPage({Key? key}) : super(key: key);

  @override
  State<TerminoscPage> createState() => _TerminoscPageState();
}

class _TerminoscPageState extends State<TerminoscPage> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          color: Colors.white,
          child: Stack(
            children: [
              Positioned(
                top: size.height * 0.03,
                left: size.width * 0.30,
                child: Image.asset(
                  'assets/logo.jpg',
                  width: size.width * 0.4,
                  height: size.height * 0.2,
                ),
              ),
              Positioned(
                top: size.height * 0.26,
                left: size.width * 0.0,
                right: size.width * 0.0,
                child: const Text(
                  "Terminos y Condiciones",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 139, 186),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              atras(context, size)
            ],
          ),
        ),
      ),
    );
  }
  }
  Widget atras(BuildContext context, Size size) {
  return Positioned(
    bottom: size.height * 0.87,
    left: size.width * 0.0,
    right: size.width * 0.80,
   child: InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const formularioResJPage()),
          );
      },
      child: Image.asset(
        'assets/AppBar.png',
      ),
    ),
  );
}