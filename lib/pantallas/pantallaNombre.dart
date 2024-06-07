// ignore: file_names
import 'package:flutter/material.dart';

class IngresarNombre extends StatefulWidget {
  @override
  _IngresarNombreState createState() => _IngresarNombreState();
}

class _IngresarNombreState extends State<IngresarNombre> {
  final TextEditingController nombre = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset('assets/imagenes/icono.png')),
        backgroundColor: const Color(0xFFD3D3D3),
        title: const Center(
          child: Text(
            '¿Listo para Comenzar?',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            controller: nombre,
            //autocorrect: true,
            decoration: const InputDecoration(
              label: Center(
                child: Text('Ingresa tu nombre:'),
              ),
              suffixIcon: IconButton(
                onPressed: _IngresarNombreState.new,
                icon: Icon(Icons.send),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
