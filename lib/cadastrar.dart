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
  final ProdutoQuimico lista = ProdutoQuimico();

  /*
  @override
  void initState() {
   lista.add('Produto químico A');
    lista.add('Produto químico B');
    lista.add('Produto químico C');
    lista.add('Produto químico D');
    lista.add('Produto químico E');
    lista.add('Produto químico F');
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
                    lista.nome[i],
                  ),
                  controlAffinity: 
                    ListTileControlAffinity.trailing,
                    value: lista.ativo[i],
                    onChanged: (bool marcado) {
                      setState(() {
                        lista.ativo[i] = marcado;
                      });
                      
                      print(lista.ativo[i]);
                    },
                  activeColor: verde,
                  checkColor: Colors.white,
                  
                );
              },
              itemCount: lista.tamanho,
            ),
          )
        ],
      ),
    );
  }
}
