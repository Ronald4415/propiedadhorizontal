import 'package:flutter/material.dart';
import 'package:propiedadhorizontal/src/pages/PagProveedores/PagPersonaJ/formularioResJ.dart';
import 'package:propiedadhorizontal/src/pages/PagProveedores/PagPersonaN/formularioResN.dart';
import 'package:propiedadhorizontal/src/pages/inicioSesion.dart';

class Crearprove extends StatelessWidget {
  const Crearprove({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Propiedad Horizontal",
      home: CrearprovePage(),
    );
  }
}

class CrearprovePage extends StatefulWidget {
  const CrearprovePage({Key? key});

  @override
  _CrearprovePageState createState() => _CrearprovePageState();
}

class _CrearprovePageState extends State<CrearprovePage> {
  bool _esPersonaJuridicaSeleccionada = false; // Estado para rastrear la selección

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

  Widget cuerpoP(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Positioned(
          top: size.height * 0.1,
          left: size.width * 0.3,
          right: size.width * 0.3,
          child: Image.asset(
            'assets/logo.jpg',
            width: size.width * 0.3,
            height: size.height * 0.2,
          ),
        ),
        Positioned(
          top: size.height * 0.3,
          left: size.width * 0.2,
          right: size.width * 0.2,
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
          top: size.height * 0.34,
          left: size.width * 0.2,
          right: size.width * 0.2,
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
        pJuridica(context),
        pNatural(context),
        entrarSesion(context),
        pagSiguiente(context),
      ],
    );
  }

  Widget pJuridica(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Positioned(
      bottom: size.height * 0.5,
      left: size.width * 0.1,
      right: size.width * 0.1,
      child: Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              _esPersonaJuridicaSeleccionada = true;
            });
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: size.width * 0.6,
                height: size.height * 0.12,
                decoration: BoxDecoration(
                  color: _esPersonaJuridicaSeleccionada
                      ? const Color.fromARGB(255, 0, 42, 92)
                      : Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: const Color.fromARGB(255, 0, 42, 92),
                  ),
                ),
              ),
              Positioned(
                left: 20,
                child: Radio(
                  value: true,
                  groupValue: _esPersonaJuridicaSeleccionada,
                  onChanged: (value) {
                    setState(() {
                      _esPersonaJuridicaSeleccionada = value!;
                    });
                  },
                  activeColor: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text(
                  'Persona jurídica',
                  style: TextStyle(
                    fontSize: 15,
                    color: _esPersonaJuridicaSeleccionada
                        ? Colors.white
                        : const Color.fromARGB(255, 0, 42, 92),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget pNatural(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Positioned(
      bottom: size.height * 0.35,
      left: size.width * 0.1,
      right: size.width * 0.1,
      child: Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              _esPersonaJuridicaSeleccionada = false;
            });
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: size.width * 0.6,
                height: size.height * 0.12,
                decoration: BoxDecoration(
                  color: !_esPersonaJuridicaSeleccionada
                      ? const Color.fromARGB(255, 0, 140, 186)
                      : Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: const Color.fromARGB(255, 0, 140, 186),
                  ),
                ),
              ),
              Positioned(
                left: 20,
                child: Radio(
                  value: false,
                  groupValue: _esPersonaJuridicaSeleccionada,
                  onChanged: (value) {
                    setState(() {
                      _esPersonaJuridicaSeleccionada = value!;
                    });
                  },
                  activeColor: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text(
                  'Persona Natural',
                  style: TextStyle(
                    fontSize: 15,
                    color: !_esPersonaJuridicaSeleccionada
                        ? Colors.white
                        : const Color.fromARGB(255, 0, 140, 186),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget entrarSesion(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Positioned(
      bottom: size.height * 0.30,
      left: size.width * 0.0,
      right: size.width * 0.30,
      child: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const InicioSesion()),
            );
          },
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: size.height * 0.01),
          ),
          child: const Text(
            'Ya tengo cuenta',
            style: TextStyle(
              fontSize: 12,
              color: Color.fromARGB(255, 0, 139, 186),
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }

  Widget pagSiguiente(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Positioned(
      bottom: size.height * 0.23,
      left: size.width * 0.0,
      right: size.width * 0.0,
      child: Center(
        child: TextButton(
          onPressed: () {
            if (_esPersonaJuridicaSeleccionada) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const formularioResJ()),
              );
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const formularioResN()),
              );
            }
          },
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.07, vertical: size.height * 0.01),
            backgroundColor: const Color.fromARGB(255, 0, 42, 92),
          ),
          child: const Text(
            'Siguiente',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white, // Letra blanca
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}




