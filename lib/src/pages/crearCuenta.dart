import 'package:flutter/material.dart';
import 'package:propiedadhorizontal/src/pages/PagProveedores/crearProve.dart';
import 'package:propiedadhorizontal/src/pages/inicioSesion.dart';
import 'package:propiedadhorizontal/src/pages/PagUsuarios/crearUsu.dart';

class CrearCuentaPage extends StatelessWidget {
  const CrearCuentaPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Propiedad Horizontal",
      home: CrearCuenta(),
    );
  }
}

class CrearCuenta extends StatefulWidget {
  const CrearCuenta({Key? key});

  @override
  State<CrearCuenta> createState() => _CrearCuentaState();
}

class _CrearCuentaState extends State<CrearCuenta> {
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
          "Crea una nueva cuenta",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromARGB(255, 0, 139, 186),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Positioned(
        top: size.height * 0.38,
        left: size.width * 0.1,
        right: size.width * 0.1,
        child: const Text(
          "Elige el perfil que más se adapte a ti",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromARGB(255, 182, 182, 182),
            fontSize: 11,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      entrarSesion(context),
      parteProvee(context),
      parteUsua(context),
    ],
  );
}

Widget entrarSesion(BuildContext context) {
  final size = MediaQuery.of(context).size;

  return Positioned(
    bottom: size.height * 0.20,
    left: size.width * 0.1,
    right: size.width * 0.1,
    child: Center(
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const InicioSesion()),
          );
        },
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.04, vertical: size.height * 0.01),
          backgroundColor: const Color.fromARGB(255, 0, 42, 92),
        ),
        child: const Text(
          'Ya tengo una cuenta',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}

Widget parteProvee(BuildContext context) {
  final size = MediaQuery.of(context).size;

  return Positioned(
    bottom: size.height * 0.45,
    left: size.width * 0.1,
    right: size.width * 0.1,
    child: Center(
      child: TextButton.icon(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Crearprove()),
          );
        },
        icon: const Icon(Icons.home_work_rounded, color: Colors.white, size: 60),
        label: const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            'Proveedor',
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: size.height * 0.02),
          backgroundColor: const Color.fromARGB(255, 0, 42, 92),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        ),
      ),
    ),
  );
}

Widget parteUsua(BuildContext context) {
  final size = MediaQuery.of(context).size;

  return Positioned(
    bottom: size.height * 0.30,
    left: size.width * 0.1,
    right: size.width * 0.1,
    child: Center(
      child: TextButton.icon(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CrearUsuPage()),
          );
        },
        icon: const Icon(Icons.person, color: Colors.white, size: 60),
        label: const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            'Usuario',
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.12, vertical: size.height * 0.02),
          backgroundColor: const Color.fromARGB(255, 0, 140, 186),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        ),
      ),
    ),
  );
}
