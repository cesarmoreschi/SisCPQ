import 'package:flutter/material.dart';
import 'package:syscpq/elementos/campoTexto.dart';
//import 'package:google_fonts/google_fonts.dart';
//import 'package:syscpq/drawer.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'SisCPQ',
          style: Theme.of(context).textTheme.headline1,
        ),
        backgroundColor: Color.fromRGBO(0, 89, 64, 1.0),
        automaticallyImplyLeading: false,
      ),
      //drawer: MeuMenu(),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Container(
                height: 200,
                width: 200,
                margin: EdgeInsets.all(20),
                child: Image.asset('lib/imagens/logo_fmrp.png')),
            SizedBox(
              height: 20,
            ),
            CampoTexto('Nº USP', false),
            SizedBox(
              height: 20,
            ),
            CampoTexto('SENHA', true),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/tela_principal');
                },
                child: Text('Entrar'),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(0, 89, 64, 1.0),
                  textStyle: TextStyle(fontSize: 20),
                ),
              ),
              width: 160,
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
