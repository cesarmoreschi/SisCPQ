import 'package:flutter/material.dart';
import 'package:syscpq/drawer.dart';
import 'package:syscpq/elementos/sair.dart';
//import 'package:syscpq/main.dart';

class TelaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'SisCPQ',
          style: TextStyle(fontSize: 26, fontFamily: "ZenDots"),
        ),
        actions: [
          Sair(),
        ],
      ),
      drawer: MeuMenu(),
      body: Center(
        child: Container(
          //alignment: ,
          height: 200,
          width: 200,
          margin: EdgeInsets.all(10),
          child: Image.asset('lib/imagens/logo_fmrp.png'),
        ),
      ),
    );
  }
}
