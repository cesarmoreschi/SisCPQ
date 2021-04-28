import 'package:flutter/material.dart';
import 'package:syscpq/cadastrar.dart';
import 'package:syscpq/comprar.dart';
import 'package:syscpq/objeto/produto_quimico.dart';
import 'package:syscpq/sobre.dart';
import 'package:syscpq/tela_principal.dart';
import 'package:syscpq/utilizar.dart';
//import 'drawer.dart';
import 'login.dart';

// CATALOGO DE CORES DO PROJETO
// VERDE ESCURO   Color.fromRGBO(0, 89, 64, 1.0)
// VERDE          Color.fromRGBO(00, 150, 103, 1.0),
// VERDE CLARO    Color.fromRGBO(229, 244, 239, 1.0),

var verdeEscuro = Color.fromRGBO(0, 89, 64, 1.0);
var verde = Color.fromRGBO(00, 150, 103, 1.0);
var verdeClaro = Color.fromRGBO(229, 244, 239, 1.0);

void main() {

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'SisCPQ',

    //Rotas de navegação
    initialRoute: '/login',
    routes: {
      '/login': (context) => Login(),
      '/tela_principal': (context) => TelaPrincipal(),
      '/sobre': (context) => Sobre(),
      '/utilizar': (context) => RegConsumo(),
      '/comprar': (context) => RegCompra(),
      '/cadastrar': (context) => CadProduto(),
    },

    // Configuração dos temas

    theme: ThemeData(
        primaryColor: verdeEscuro,
        backgroundColor: verdeClaro,
        //fontFamily: 'ZenDots',
        textTheme: TextTheme(
          headline1:
            TextStyle(
              fontSize: 26,
              fontFamily: 'ZenDots', 
              color: verdeClaro
            ),
          headline2: 
            TextStyle(
              fontSize: 16,
              color: verdeEscuro,
            ),
          headline3: 
            TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w900,
              color: verdeEscuro,
            ),
        )),
  ));
}

/*
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
        title: Text('LOGIN'),
      ),
      drawer: MeuMenu(),
    );
  }
}*/
