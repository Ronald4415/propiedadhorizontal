import 'package:flutter/material.dart';
import 'package:propiedadhorizontal/src/pages/crearCuenta.dart';

class InicioSesionPage extends StatelessWidget {
  const InicioSesionPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Propiedad Horizontal",
      home: InicioSesion(),
    );
  }
}

class InicioSesion extends StatefulWidget {
  const InicioSesion({Key? key});

  @override
  State<InicioSesion> createState() => _InicioSesionState();
}

class _InicioSesionState extends State<InicioSesion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: cuerpoP(context),
          ),
        ),
      ),
    );
  }
}

Widget cuerpoP(BuildContext context) {
  final size = MediaQuery.of(context).size;

  return Stack(
    fit: StackFit.expand,
    children: <Widget>[
      Positioned(
        top: size.height * 0.1,
        left: size.width * 0.25,
        right: size.width * 0.25,
        child: Image.asset(
          'assets/logo.jpg',
          width: size.width * 0.5,
          height: size.height * 0.2,
        ),
      ),
      Positioned(
        top: size.height * 0.35,
        left: size.width * 0.1,
        right: size.width * 0.1,
        child: const Text(
          "Iniciar sesión",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromARGB(255, 0, 139, 186),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Positioned(
        top: size.height * 0.45,
        left: size.width * 0.0,
        right: size.width * 0.21,
        child: const Text(
          "Nombre de usuario",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromARGB(255, 0, 139, 186),
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      Positioned(
        top: size.height * 0.55,
        left: size.width * 0.0,
        right: size.width * 0.32,
        child: const Text(
          "Contraseña",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromARGB(255, 0, 139, 186),
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      email(size),
      contrasena(size),
      llevarRegis(context, size),
      entrar(context, size)
    ],
  );
}

Widget email(Size size) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: size.width * 0.2),
    margin: EdgeInsets.only(top: size.height * 0.48),
    child: TextFormField(
      textAlign: TextAlign.start,
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(23, 10, 20, 10),
        hintText: "Introduzca email",
        hintStyle: TextStyle(color: Color.fromARGB(255, 182, 182, 182)),
        fillColor: Colors.white,
        filled: true,
        isCollapsed: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
      ),
      style: const TextStyle(
        color: Colors.black,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}

Widget contrasena(Size size) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: size.width * 0.2),
    margin: EdgeInsets.only(top: size.height * 0.58),
    child: TextFormField(
      textAlign: TextAlign.start,
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(23, 10, 20, 10),
        hintText: "Introduzca su contraseña",
        hintStyle: TextStyle(color: Color.fromARGB(255, 182, 182, 182)),
        fillColor: Colors.white,
        filled: true,
        isCollapsed: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
      ),
      style: const TextStyle(
        color: Colors.black,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}

Widget llevarRegis(BuildContext context, Size size) {
  return Positioned(
    bottom: size.height * 0.32,
    left: size.width * 0.0,
    right: size.width * 0.29,
    child: Center(
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CrearCuenta()),
          );
        },
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: size.height * 0.02),
        ),
        child: const Text(
          'No estoy registrado',
          style: TextStyle(
            fontSize: 11,
            color: Color.fromARGB(255, 0, 139, 186),
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    ),
  );
}

Widget entrar(BuildContext context, Size size) {
  return Positioned(
    bottom: size.height * 0.22,
    left: size.width * 0.0,
    right: size.width * 0.0,
    child: Center(
      child: TextButton(
        onPressed: () {
          // Coloca aquí la función que deseas que se ejecute al presionar el botón
        },
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: size.height * 0.01),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: const BorderSide(color: Colors.black),
          ),
        ),
        child: const Text(
          'Entrar',
          style: TextStyle(
            fontSize: 16,
            color: Color.fromARGB(255, 0, 139, 186),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
