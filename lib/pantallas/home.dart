import 'package:flutter/material.dart';

class PantallaInicio extends StatelessWidget {
  const PantallaInicio({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset('assets/imagenes/icono.png')),
        backgroundColor: const Color(0xFFD3D3D3),
      ),
      body: Container(
        width: double.infinity,
        color: const Color(0xFFE0E0E0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 25.0,
            ),
            SizedBox(
              width: 150,
              child: Image.asset('assets/imagenes/icono.png'),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              width: 300,
              child: Text(
                'CALCULADORA DE OPERACIONES BÁSICAS',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'ingresarNombre');
              },
              style: ButtonStyle(
                backgroundColor:
                    WidgetStateProperty.all<Color>(const Color(0xFF90CAF9)),
              ),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'JUGAR',
                  style: TextStyle(
                    color: Color.fromARGB(255, 1, 53, 78),
                    fontSize: 30.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'mejoresPuntuaciones');
              },
              style: ButtonStyle(
                backgroundColor:
                    WidgetStateProperty.all<Color>(const Color(0xFF90CAF9)),
                //backgroundColor: WidgetStateProperty,
              ),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'MEJORES PUNTACIONES',
                  style: TextStyle(
                    color: Color.fromARGB(255, 1, 53, 78),
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
