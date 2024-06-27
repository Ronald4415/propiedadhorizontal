import 'package:flutter/material.dart';
import 'package:propiedadhorizontal/src/pages/crearCuenta.dart';
import 'package:propiedadhorizontal/src/pages/inicioSesion.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Propiedad Horizontal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();
  int _currentPageIndex = 0;

  @override
  void initState() {
    _pageController.addListener(() {
      setState(() {
        _currentPageIndex = _pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {},
            children: [
              buildPage(
                urlImage: 'assets/Foto_Hombre.jpg',
                title: '¡Bienvenido!',
                subtitle: 'Encuentra rápidamente proveedores\nconfiables para tus necesidades de tu\npropiedad horizontal.',
              ),
              buildPage(
                urlImage: 'assets/Foto_Mujer_A.jpg',
                title: 'Accede a un directorio amplio\nde servicios',
                subtitle: 'Acceso a una amplia red de profesionales\ncalificados en servicios de mantenimiento,\nseguridad y más.',
              ),
              buildPage(
                urlImage: 'assets/Foto_Mujer.jpg',
                title: 'Practicidad en la búsqueda\nde una solución',
                subtitle: 'Ahorra tiempo y esfuerzo al encontrar\nproveedores de calidad con solo unos\npocos clics',
              ),
              buildLastPage(
                urlImage: 'assets/Figura_Azul.jpg',
                title: '¡Comencemos!',
              ),
            ],
          ),
          Positioned(
            top: size.height * 0.1,
            left: 0,
            right: 0,
            child: Center(
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 4,
                effect: const ExpandingDotsEffect(
                  activeDotColor: Color.fromARGB(255, 0, 140, 186),
                  dotColor: Color.fromARGB(255, 181, 181, 181),
                  dotHeight: 12,
                  dotWidth: 12,
                  expansionFactor: 4,
                  spacing: 8,
                ),
              ),
            ),
          ),
          if (_currentPageIndex != 0 && _currentPageIndex != 3)
            Positioned(
              bottom: size.height * 0.2,
              left: size.width * 0.1,
              child: GestureDetector(
                onTap: () {
                  _pageController.previousPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                },
                child: Image.asset(
                  'assets/Izquierda.png',
                  width: size.width * 0.1,
                  height: size.width * 0.1,
                ),
              ),
            ),
          if (_currentPageIndex != 3)
            Positioned(
              bottom: size.height * 0.2,
              right: size.width * 0.1,
              child: GestureDetector(
                onTap: () {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                },
                child: Image.asset(
                  'assets/Derecha.png',
                  width: size.width * 0.1,
                  height: size.width * 0.1,
                ),
              ),
            ),
          if (_currentPageIndex != 3)
            Positioned(
              bottom: size.height * 0.05,
              left: 0,
              right: 0,
              child: Center(
                child: TextButton(
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      color: Color.fromARGB(255, 162, 162, 162),
                    ),
                  ),
                  onPressed: () {
                    _pageController.jumpToPage(3);
                  },
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget buildPage({
    required String title,
    required String subtitle,
    required String urlImage,
  }) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.fromLTRB(
        size.width * 0.06,
        size.height * 0.15,
        size.width * 0.06,
        size.height * 0.03,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            urlImage,
            fit: BoxFit.cover,
            width: size.width * 0.65,
            height: size.height * 0.30,
          ),
          SizedBox(height: size.height * 0.02),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color.fromARGB(255, 0, 139, 186),
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: size.height * 0.03),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }

  Widget buildLastPage({
    required String title,
    required String urlImage,
  }) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(top: size.height * 0.4),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            urlImage,
            fit: BoxFit.cover,
            width: size.width * 1.0,
            height: size.height * 1.0,
          ),
          Positioned(
            top: size.height * 0.1,
            left: 0,
            right: 0,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: size.height * 0.15,
            left: size.width * 0.09,
            right: size.width * 0.09,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CrearCuenta()),
                );
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: size.height * 0.01, horizontal: size.width * 0.01),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: const Text(
                'Crear Cuenta',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 140, 186),
                  fontSize: 17,
                ),
              ),
            ),
          ),
          Positioned(
             bottom: size.height * 0.08,
            left: size.width * 0.09,
            right: size.width * 0.09,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const InicioSesionPage()),
                );
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: size.height * 0.01, horizontal: size.width * 0.01),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: const Text(
                'Iniciar sesión',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 140, 186),
                  fontSize: 17,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

