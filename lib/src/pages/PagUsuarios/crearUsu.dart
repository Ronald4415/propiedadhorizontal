import 'package:flutter/material.dart';
import 'package:propiedadhorizontal/src/pages/inicioSesion.dart';

class CrearUsu extends StatelessWidget {
  const CrearUsu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Propiedad Horizontal",
      home: CrearUsuPage(),
    );
  }
}

class CrearUsuPage extends StatefulWidget {
  const CrearUsuPage({Key? key}) : super(key: key);

  @override
  State<CrearUsuPage> createState() => _CrearUsuPageState();
}

class _CrearUsuPageState extends State<CrearUsuPage> {
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
                top: size.height * 0.07,
                left: size.width * 0.30,
                child: Image.asset(
                  'assets/logo.jpg',
                  width: size.width * 0.4,
                  height: size.height * 0.2,
                ),
              ),
              Positioned(
                top: size.height * 0.30,
                left: size.width * 0.28,
                child: const Text(
                  "Crea tu perfil usuario",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 139, 186),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.37,
                right: size.width * 0.48,
                child: const Text(
                  "Nombre completo",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 139, 186),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.47,
                right: size.width * 0.63,
                child: const Text(
                  "Telefono",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 139, 186),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.57,
                right: size.width * 0.66,
                child: const Text(
                  "E-mail",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 139, 186),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.67,
                right: size.width * 0.58,
                child: const Text(
                  "Contraseña",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 139, 186),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.77,
                right: size.width * 0.32,
                child: const Text(
                  "Confirmacion de contraseña",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 139, 186),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              _buildTextField("Introduzca su nombre completo", 0.40, size),
              _buildTextField("Introduzca su telefono", 0.50, size),
              _buildTextField("Introduzca su e-mail", 0.60, size),
              _buildTextField("Introduzca su contraseña", 0.70, size, obscureText: true),
              _buildTextField("Introduzca su contraseña", 0.80, size, obscureText: true),
              Positioned(
                bottom: size.height * 0.11,
                left: size.width * 0.0,
                right: size.width * 0.32,
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const InicioSesion()),
                      );
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                    ),
                    child: const Text(
                      'Ya tengo cuenta',
                      style: TextStyle(
                        fontSize: 11,
                        color: Color.fromARGB(255, 0, 139, 186),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: size.height * 0.05,
                left: size.width * 0.25,
                right: size.width * 0.25,
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      // Acción del botón
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: const BorderSide(color: Colors.black),
                      ),
                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
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
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String hint, double topFactor, Size size, {bool obscureText = false}) {
    return Positioned(
      top: size.height * topFactor,
      left: size.width * 0.2,
      right: size.width * 0.2,
      child: TextFormField(
        obscureText: obscureText,
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(23, 10, 20, 10),
          hintText: hint,
          hintStyle: const TextStyle(color: Color.fromARGB(255, 182, 182, 182)),
          fillColor: const Color.fromARGB(255, 255, 255, 255),
          filled: true,
          isCollapsed: true,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
        ),
        style: const TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}


