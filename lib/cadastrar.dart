import 'package:flutter/material.dart';
import 'package:syscpq/drawer.dart';
import 'package:syscpq/elementos/sair.dart';
import 'package:syscpq/main.dart';
import 'package:syscpq/objeto/produto_quimico.dart';
//import 'package:syscpq/objeto/produto_quimico.dart';

class CadProduto extends StatefulWidget {
  @override
  _CadProdutoState createState() => _CadProdutoState();
}

class _CadProdutoState extends State<CadProduto> {
  final ProdutoQuimico produto = ProdutoQuimico();

  /*
  @override
  void initState() {
   produto.add('Produto químico A');
    produto.add('Produto químico B');
    produto.add('Produto químico C');
    produto.add('Produto químico D');
    produto.add('Produto químico E');
    produto.add('Produto químico F');
    ativo.add(false);
    ativo.add(false);
    ativo.add(false);
    ativo.add(false);
    ativo.add(false);
    ativo.add(false);
    ativo.add(false);
    super.initState();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Cadastrar Produtos',
          style: Theme.of(context).textTheme.headline1,
        ),
        actions: [
          Sair(),
        ],
        //automaticallyImplyLeading: false,
      ),
      drawer: MeuMenu(),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, i) {
                return CheckboxListTile(
                  title: Text(
                    produto.nome[i],
                  ),
                  controlAffinity: 
                    ListTileControlAffinity.trailing,
                    value: produto.ativo[i],
                    onChanged: (bool marcado) {
                      setState(() {
                        produto.ativo[i] = marcado;
                      });
                      
                      //print(produto.ativo[i]);
                    },
                  activeColor: verde,
                  checkColor: Colors.white,
                  
                );
              },
              itemCount: produto.tamanho,
            ),
          )
        ],
      ),
    );
  }
}
