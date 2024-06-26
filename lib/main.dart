import 'package:app_ninios/pantallas/home.dart';
import 'package:app_ninios/pantallas/pantallaJuego.dart';
import 'package:app_ninios/pantallas/pantallaMejoresPuntuaciones.dart';
import 'package:app_ninios/pantallas/pantallaNombre.dart';
import 'package:app_ninios/pantallas/pantallaResultado.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora Preescolar',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaInicio(),
        'ingresarNombre': (context) => const IngresarNombre(),
        'juego': (context) => Pantallajuego(
              nombre: "",
            ),
        'mejoresPuntuaciones': (context) => const Pantallamejorespuntuaciones(),
        'pantallaGanador': (context) =>
            PantallaGanador(nombre: "", puntaje: ""),
      },
      theme: ThemeData(
        fontFamily: 'LuckiestGuy',
      ),
    );
  }
}
