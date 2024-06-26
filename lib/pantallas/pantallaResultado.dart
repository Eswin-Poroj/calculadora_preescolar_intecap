import 'package:app_ninios/pantallas/numero_aleatorio.dart';
import 'package:app_ninios/pantallas/pantallaNombre.dart';
import 'package:flutter/material.dart';

class PantallaGanador extends StatelessWidget {
  dynamic nombre = "";
  dynamic puntaje = 0;
  PantallaGanador({required this.nombre, required this.puntaje});
  @override
  Widget build(BuildContext context) {
    NumeroAleatorio numeroAleatorio = NumeroAleatorio();
    numeroAleatorio.mejorPuntuacion();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFD3D3D3),
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/', (Route<dynamic> route) => false);
                puntuaje = 0;
                nivel = 1;
                oportunidades = 0;
              },
              icon: Image.asset('assets/imagenes/icono.png'),
            );
          },
        ),
        title: const Center(
          child: Text(
            '¡Felicides eres un Ganador!',
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
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/', (Route<dynamic> route) => false);
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '¡Felicidades $nombre!',
              style: const TextStyle(fontSize: 40),
            ),
            const SizedBox(height: 10),
            const Text(
              '¡Haz Ganado!',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 250,
              child: Image.asset('assets/imagenes/bmo.gif'),
            ),
            const SizedBox(height: 10),
            Container(
              height: 50,
              width: 250,
              decoration: const BoxDecoration(
                color: Color(0xFFCE93D8),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Center(
                child: Text(
                  'Tu puntaje fue de: $puntaje',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color(0xFF90CAF9),
                ),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const IngresarNombre()));
                puntaje = 0;
                oportunidades = 0;
                nivel = 1;
              },
              child: const Text(
                'JUGAR DE NUEVO',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
