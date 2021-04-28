import 'package:flutter/material.dart';

class CampoTexto extends StatelessWidget {
  final String titulo;
  final bool senha;

  // Construtor
  CampoTexto(this.titulo, this.senha);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        labelText: titulo,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      obscureText: senha,
    );
  }
}

