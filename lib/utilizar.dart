import 'package:flutter/material.dart';
import 'package:syscpq/drawer.dart';
import 'package:syscpq/elementos/sair.dart';
import 'package:syscpq/objeto/produto_quimico.dart';

class RegConsumo extends StatefulWidget {
  @override
  _RegConsumoState createState() => _RegConsumoState();
}

class _RegConsumoState extends State<RegConsumo> {
  @override
  Widget build(BuildContext context) {
    final ProdutoQuimico produto = ProdutoQuimico();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Registrar Consumo',
          style: Theme.of(context).textTheme.headline1,
        ),
        actions: [
          Sair(),
        ],
        //automaticallyImplyLeading: false,
      ),
      drawer: MeuMenu(),
      body: Container(
        padding: EdgeInsets.all(40),
        width: MediaQuery.of(context).size.width * 0.8,
        child: Column(
          children: [
            Text(produto.nome[1].toString()),
            Text(produto.qtd[1].toString()),
            Text(produto.ativo[1].toString())
          ],
        ),
      ),
    );
  }
}
