import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
            padding: EdgeInsets.all(10.0),
            child: Image.asset('assets/imagenes/icono.png')),
        backgroundColor: const Color(0xFFD3D3D3),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10.0,
              ),
              Center(
                child: SizedBox(
                  width: 100,
                  child: Image.asset('assets/imagenes/icono.png'),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              const Center(
                child: Text(
                  'CALCULADORA DE OPERACIONES BÁSICAS',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
