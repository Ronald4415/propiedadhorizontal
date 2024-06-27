import 'package:flutter/material.dart';
import 'package:propiedadhorizontal/src/pages/crearCuenta.dart';
import 'package:propiedadhorizontal/src/pages/inicioSesion.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(const MembresiasPage());
}

class MembresiasPage extends StatelessWidget {
  const MembresiasPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Propiedad Horizontal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Membresias(),
    );
  }
}

class Membresias extends StatefulWidget {
  Membresias({Key? key}) : super(key: key);

  @override
  _MembresiasState createState() => _MembresiasState();
}

class _MembresiasState extends State<Membresias> {
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
          Positioned(
            top: size.height * -0.02,
            left: size.width * 0.20,
            child: Image.asset(
              'assets/Barra2.jpeg',
              width: size.width * 0.6,
              height: size.height * 0.2,
            ),
          ),
          Positioned(
            top: size.height * 0.11,
            left: 0,
            right: 0,
            child: const Text(
              "Elige tu membresía",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(255, 0, 139, 186),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPageIndex = page;
              });
            },
            children: [
              buildLastPage(
                urlImage: 'assets/PlanBasico.jpeg',
                title: '000000',
              ),
              buildLastPage2(
                urlImage: 'assets/PlanGold.jpeg',
                title: '000000',
              ),
            ],
          ),
          Positioned(
            top: size.height * 0.9,
            left: 0,
            right: 0,
            child: Center(
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 2,
                effect: ExpandingDotsEffect(
                  activeDotColor: _currentPageIndex == 1
                      ? Colors.white
                      : Color.fromARGB(255, 0, 140, 186),
                  dotColor: Color.fromARGB(255, 181, 181, 181),
                  dotHeight: 12,
                  dotWidth: 12,
                  expansionFactor: 4,
                  spacing: 8,
                ),
              ),
            ),
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
      padding: EdgeInsets.only(top: size.height * 0.15),
      child: Stack(
        children: [
          Image.asset(
            urlImage,
            width: size.width * 2.0,
            height: size.height * 2.0,
          ),
          Positioned(
            top: size.height * 0.15,
            left: 0,
            right: 0,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color.fromARGB(255, 127, 127, 127),
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: size.height * 0.15,
            left: size.width * 0.35,
            right: size.width * 0.35,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const InicioSesionPage()),
                );
              },
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 0, 42, 92),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: const Text(
                'Siguiente',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLastPage2({
    required String title,
    required String urlImage,
  }) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(top: size.height * 0.15),
      child: Stack(
        children: [
          Image.asset(
            urlImage,
            width: size.width * 2.0,
            height: size.height * 2.0,
          ),
          Positioned(
            top: size.height * 0.13,
            left: 0,
            right: 0,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: size.height * 0.13,
            left: size.width * 0.35,
            right: size.width * 0.35,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const InicioSesionPage()),
                );
              },
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 0, 42, 92),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: const Text(
                'Siguiente',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
