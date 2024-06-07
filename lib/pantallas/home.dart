import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
        color: const Color(0xFFE0E0E0),
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child: SizedBox(
                width: 100,
                child: Image.asset('assets/imagenes/icono.png'),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const SizedBox(
              child: Center(
                child: Text(
                  'CALCULADORA DE OPERACIONES BÁSICAS',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const ElevatedButton(
              style: raisedButtonStyle,
              onPressed: () {},
              child: Text('JUGAR'),
            )
          ],
        ),
      ),
    );
  }
}

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  foregroundColor: Colors.black87,
  backgroundColor: Colors.grey[300],
  minimumSize: const Size(88, 36),
  padding: const EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
  ),
);
