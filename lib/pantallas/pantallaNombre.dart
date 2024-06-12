// ignore: file_names
import 'package:app_ninios/pantallas/pantallaJuego.dart';
import 'package:flutter/material.dart';

class IngresarNombre extends StatefulWidget {
  const IngresarNombre({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _IngresarNombreState createState() => _IngresarNombreState();
}

class _IngresarNombreState extends State<IngresarNombre> {
  final TextEditingController _nombreUsuario = TextEditingController();
  dynamic nombreFinal;

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
            '¿Listo para Comenzar?',
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(100.0),
              child: TextField(
                controller: _nombreUsuario,
                decoration: InputDecoration(
                  label: const Center(
                    child: Text('Ingresa tu nombre:'),
                  ),
                  suffixIcon: ElevatedButton(
                    onPressed: () {
                      nombreFinal = _nombreUsuario;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Pantallajuego(nombre: _nombreUsuario.text)));
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(
                          const Color(0xFF90CAF9)),
                    ),
                    child: const Icon(Icons.send),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
