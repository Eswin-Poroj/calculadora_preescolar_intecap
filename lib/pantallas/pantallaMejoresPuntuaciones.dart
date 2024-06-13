import 'package:flutter/material.dart';

import 'numero_aleatorio.dart';

class Pantallamejorespuntuaciones extends StatelessWidget {
  const Pantallamejorespuntuaciones({super.key});

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
              },
              icon: Image.asset('assets/imagenes/icono.png'),
            );
          },
        ),
        title: const Center(
          child: Text(
            'MEJORES PUNTUACIONES',
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
                'Jugar',
                textAlign: TextAlign.center,
              ),
              onTap: () {
                Navigator.pushNamed(context, 'ingresarNombre');
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
        child: Container(
          height: 500,
          width: 300,
          decoration: const BoxDecoration(
              color: Color.fromRGBO(216, 160, 169, 0.996),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              border: Border.symmetric(
                vertical: BorderSide(
                  width: 5.0,
                  color: Colors.blueAccent,
                  style: BorderStyle.solid,
                ),
                horizontal: BorderSide(
                  width: 5.0,
                  color: Colors.blueAccent,
                  style: BorderStyle.solid,
                ),
              )),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Text(
                'Top de Jugadores',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Jugador 1',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    padding: EdgeInsets.all(0),
                    margin: EdgeInsets.only(
                      left: 25,
                    ),
                    child: Image.asset('assets/imagenes/estrella.gif'),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 0,
                    ),
                    padding: EdgeInsets.all(0),
                    height: 30,
                    width: 180,
                    color: Colors.amberAccent,
                    child: Center(
                      child: Text(
                        '${mejorJugador[0]}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          color: const Color.fromARGB(255, 7, 36, 59),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Text(
                'Jugador 2',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    padding: EdgeInsets.all(0),
                    margin: EdgeInsets.only(
                      left: 25,
                    ),
                    child: Image.asset('assets/imagenes/estrella.gif'),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 0,
                    ),
                    padding: EdgeInsets.all(0),
                    height: 30,
                    width: 180,
                    color: Colors.amberAccent,
                    child: Center(
                      child: Text(
                        '${mejorJugador[1]}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          color: const Color.fromARGB(255, 7, 36, 59),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Text(
                'Jugador 3',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    padding: EdgeInsets.all(0),
                    margin: EdgeInsets.only(
                      left: 25,
                    ),
                    child: Image.asset('assets/imagenes/estrella.gif'),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 0,
                    ),
                    padding: EdgeInsets.all(0),
                    height: 30,
                    width: 180,
                    color: Colors.amberAccent,
                    child: Center(
                      child: Text(
                        '${mejorJugador[2]}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          color: const Color.fromARGB(255, 7, 36, 59),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
