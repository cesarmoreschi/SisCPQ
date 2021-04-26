import 'package:flutter/material.dart';
import 'package:syscpq/drawer.dart';
import 'package:syscpq/elementos/sair.dart';

class Sobre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Sobre',
          style: Theme.of(context).textTheme.headline1,
        ),
        actions: [
          Sair(),
        ],
        //automaticallyImplyLeading: false,
      ),
      drawer: MeuMenu(),
      body: Center(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Este programa foi desenvolvido com intuito de auxiliar a FMRP a fazer o controle de produtos químicos.\n'
                    'Estes produtos são controlados pela Polícia Federal e são utilizados na produção ou preparação de intorpecentes.\n\n'
                    'Estes programa possui as seguintes telas:\n'
                    ' - Login;\n - Tela Principal;\n - Cadastrar Compra;\n - Cadastrar Consumo;\n  - Cadatrar Compra.',
                    textAlign: TextAlign.justify,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ClipOval(
                      child: Container(
                        width: 100,
                        height: 100,
                        child: Image.asset('lib/imagens/foto.jpg'),
                    ),
                  ),
                  Text(
                    'Carlos Cesar Moreschi',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
