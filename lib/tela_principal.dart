import 'package:flutter/material.dart';
//import 'package:syscpq/drawer.dart';
import 'package:syscpq/elementos/sair.dart';
import 'package:syscpq/main.dart';
import 'package:syscpq/objeto/produto_quimico.dart';
//import 'package:syscpq/main.dart';

class TelaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // declaração do produto
    ProdutoQuimico produto = ModalRoute.of(context).settings.arguments;
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
        /*leading: IconButton(
          onPressed: () {  },
          icon: Icon(
            Icons.arrow_back,
            color: verdeClaro,
          ),
        ),*/
        automaticallyImplyLeading: false,
      ),
      //drawer: MeuMenu(),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'MENU',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: verdeEscuro,
                    fontFamily: 'ZenDots'),
              ),
              Container(
                child: Image.asset('lib/imagens/logo_fmrp.png'),
                height: 200,
                width: 200,
                margin: EdgeInsets.all(40),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.7,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, '/comprar',
                        arguments: produto);
                  },
                  child: Text(
                    'Comprar',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: verdeEscuro,
                    textStyle: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.7,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, '/utilizar',
                        arguments: produto);
                  },
                  child: Text(
                    'Utilizar',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: verdeEscuro,
                    textStyle: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.7,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, '/cadastrar',
                        arguments: produto);
                  },
                  child: Text(
                    'Cadastrar',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: verdeEscuro,
                    textStyle: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.7,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, '/sobre');
                  },
                  child: Text(
                    'Sobre',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: verdeEscuro,
                    textStyle: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
