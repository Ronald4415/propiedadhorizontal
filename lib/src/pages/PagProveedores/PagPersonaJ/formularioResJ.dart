import 'package:flutter/material.dart';
import 'package:propiedadhorizontal/src/pages/PagProveedores/crearProve.dart';
import 'package:propiedadhorizontal/src/pages/PlanesPagos/membresias.dart';
import 'package:propiedadhorizontal/src/pages/terminosC.dart';

class formularioResJ extends StatelessWidget {
  const formularioResJ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Propiedad Horizontal",
      home: formularioResJPage(),
    );
  }
}

class formularioResJPage extends StatefulWidget {
  const formularioResJPage({Key? key}) : super(key: key);

  @override
  State<formularioResJPage> createState() => _formularioResJPageState();
}

class _formularioResJPageState extends State<formularioResJPage> {
  String? _selectedOption;
  bool _terminosAceptados = false;
  final _perfilController = TextEditingController();

  @override
  void dispose() {
    _perfilController.dispose();
    super.dispose();
  }

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
                top: size.height * -0.02,
                left: size.width * 0.20,
                child: Image.asset(
                  'assets/Barra1.jpeg',
                  width: size.width * 0.6,
                  height: size.height * 0.2,
                ),
              ),
              Positioned(
                top: size.height * 0.12,
                left: size.width * 0.0,
                right: size.width * 0.0,
                child: const Text(
                  "Crea tu perfil de persona\njuridica",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 139, 186),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.19,
                right: size.width * 0.40,
                child: const Text(
                  "Nombre de la empresa",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 139, 186),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.27,
                right: size.width * 0.69,
                child: const Text(
                  "NIT",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 139, 186),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.35,
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
                top: size.height * 0.43,
                right: size.width * 0.61,
                child: const Text(
                  "Direccion",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 139, 186),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.51,
                right: size.width * 0.50,
                child: const Text(
                  "Celular/Telefono",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 139, 186),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.59,
                right: size.width * 0.30,
                child: const Text(
                  "Actor de propiedad horizontal",
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
              _buildTextField("Introduzca nombre de la empresa", 0.22, size),
              _buildTextField("Introduzca su numero de NIT", 0.30, size),
              _buildTextField("Introduzca su e-mail", 0.38, size),
              _buildTextField("Introduzca direccion", 0.46, size),
              _buildTextField("Introduzca numero de celular/telefono", 0.54, size),
              _buildDropdownButtonFormField("Elige un perfil", 0.62, size),
              _buildTextField("Introduzca su contraseña", 0.70, size, obscureText: true),
              Positioned(
                bottom: size.height * 0.15,
                left: size.width * 0.25,
                right: size.width * 0.25,
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Membresias()),
                      );
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: const BorderSide(color: Colors.black),
                      ),
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: const Text(
                      'Siguiente',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 0, 139, 186),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              terminos(context, size),
              _buildCheckboxListTile(size),
              atras(context, size)
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

  Widget _buildDropdownButtonFormField(String hint, double topFactor, Size size) {
    return Positioned(
      top: size.height * topFactor,
      left: size.width * 0.2,
      right: size.width * 0.2,
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(
            color: Color.fromARGB(255, 182, 182, 182),
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
          contentPadding: const EdgeInsets.fromLTRB(20, 3, 20, 16),
          isCollapsed: true,
          fillColor: const Color.fromARGB(255, 255, 255, 255),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
        ),
        value: _selectedOption,
        onChanged: (String? newValue) {
          setState(() {
            _selectedOption = newValue;
          });
        },
        items: <String>['Opción 1', 'Opción 2', 'Opción 3'].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Center(
              child: Text(
                value,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildCheckboxListTile(Size size) {
    return Positioned(
      bottom: size.height * 0.20,
      left: size.width * 0.18,
      right: size.width * 0.4,
      child: Theme(
        data: Theme.of(context).copyWith(
          checkboxTheme: CheckboxThemeData(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.0),
            ),
            fillColor: MaterialStateProperty.all(const Color.fromARGB(255, 255, 255, 255)),
            checkColor: MaterialStateProperty.all(const Color.fromARGB(255, 0, 139, 186)),
          ),
        ),
        child: CheckboxListTile(
          title: const Text(
            'Acepto',
            style: TextStyle(
              color: Color.fromARGB(255, 182, 182, 182),
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          value: _terminosAceptados,
          onChanged: (bool? value) {
            setState(() {
              _terminosAceptados = value ?? false;
            });
          },
          controlAffinity: ListTileControlAffinity.leading,
        ),
      ),
    );
  }
}

Widget terminos(BuildContext context, Size size) {
  return Positioned(
    bottom: size.height * 0.20,
    left: size.width * 0.19,
    right: size.width * 0.0,
    child: Center(
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TerminoscPage()),
          );
        },
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.1, vertical: size.height * 0.02),
        ),
        child: const Text(
          'terminos y condiciones',
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

Widget atras(BuildContext context, Size size) {
  return Positioned(
    bottom: size.height * 0.87,
    left: size.width * 0.0,
    right: size.width * 0.80,
    child: InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CrearprovePage()),
          );
      },
      child: Image.asset(
        'assets/AppBar.png',
      ),
    ),
  );
}
