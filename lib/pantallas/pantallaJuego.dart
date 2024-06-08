import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Pantallajuego extends StatefulWidget {
  dynamic nombre = '';

  Pantallajuego({super.key, required this.nombre});

  @override
  // ignore: library_private_types_in_public_api
  _PantallajuegoState createState() =>
      // ignore: no_logic_in_create_state
      _PantallajuegoState(nombreJugador: nombre);
}

class _PantallajuegoState extends State<Pantallajuego> {
  dynamic nombreJugador;

  _PantallajuegoState({required this.nombreJugador});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFD3D3D3),
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              icon: Image.asset('assets/imagenes/icono.png'),
            );
          },
        ),
        title: const Center(
          child: Text(
            '¡¡Jugemos!!',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
      ),
      endDrawer: Drawer(
        width: 250,
        backgroundColor: const Color(0xFFCE93D8),
        child: ListView(
          children: [
            const SizedBox(
              height: 80,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFFD3D3D3),
                ),
                child: Text(
                  'Menú',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                ),
              ),
            ),
            ListTile(
              title: const Text(
                'Home',
                textAlign: TextAlign.center,
              ),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            ListTile(
              title: const Text(
                'Mejores Puntuaciones',
                textAlign: TextAlign.center,
              ),
              onTap: () {
                Navigator.pushNamed(context, 'mejoresPuntuaciones');
              },
            ),
            const SizedBox(
              height: 250,
            ),
            SizedBox(
              width: 150,
              height: 150,
              child: Image.asset('assets/imagenes/icono.png'),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Calculadora de Niños',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Text(nombreJugador),
    );
  }
}
