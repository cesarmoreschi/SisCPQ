import 'package:flutter/material.dart';


class CampoTexto extends StatelessWidget {
  final String titulo;
  final bool senha;
  var conteudo;

  // Construtor
  CampoTexto(this.titulo, this.senha, this.conteudo);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: conteudo,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        labelText: titulo,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      validator: (valor) {
        if (valor.isEmpty){
          return 'Valor inválido';
        } else {
          return null;
        }
      },
      obscureText: senha,
    );
  }
}
