import 'package:flutter/material.dart';
import 'package:propiedadhorizontal/src/pages/home_screen.dart';
import 'package:propiedadhorizontal/src/pages/splash_screen.dart';

void main() => runApp(const Miapp());


class Miapp extends StatelessWidget {
  const Miapp({Key? key}) : super(key: key);  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Propiedad Horizontal",
      debugShowCheckedModeBanner: false,
      initialRoute: "splash",
      routes: {
        "splash":(context) =>  const SplashScreen(),
        "home":(context) =>  HomeScreen(),
      }
    );
  }
}

