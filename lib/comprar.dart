import 'dart:html';

import 'package:flutter/material.dart';
import 'package:syscpq/drawer.dart';
import 'package:syscpq/elementos/campoTexto.dart';
import 'package:syscpq/elementos/sair.dart';
import 'package:syscpq/main.dart';
import 'package:syscpq/objeto/produto_quimico.dart';

class RegCompra extends StatefulWidget {
  @override
  _RegCompraState createState() => _RegCompraState();
}

class _RegCompraState extends State<RegCompra> {
  final ProdutoQuimico produto = ProdutoQuimico();
  //var addQtd = TextEditingController();
  List<TextEditingController> _controllers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Registrar Compra',
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
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        child: Text(
                          'PRODUTO',
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        width: MediaQuery.of(context).size.width * 0.4,
                      ),
                      SizedBox(
                        child: Text(
                          'ESTOQUE',
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        width: 100,
                      ),
                      SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            'COMPRA',
                            style: Theme.of(context).textTheme.headline3,
                          ),
                        )
                        
                      ),
                    ]
                  ), 
                  Expanded(
                    child: Container(
                      child: ListView.builder(
                        itemBuilder: (context, i) {
                          _controllers.add(new TextEditingController());
                          if (produto.ativo[i]) {
                            return Container(
                              child: ListTile(
                                title: Row(
                                  children: [
                                    SizedBox(
                                      child: Text(
                                        produto.nome[i],
                                        style: Theme.of(context).textTheme.headline2,
                                      ),
                                      width: MediaQuery.of(context).size.width * 0.4,
                                    ),
                                    SizedBox(
                                      child: Text(
                                        produto.qtd[i].toString(),
                                        style: Theme.of(context).textTheme.headline2,
                                      ),
                                      width: 100,
                                    ),
                                    Expanded(
                                        child: TextFormField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(5))),
                                      controller: _controllers[i],
                                      validator: (value) {
                                        if (double.tryParse(value) == null) {
                                          return 'Informe um valor númerico';
                                        } else {
                                          return null;
                                        }
                                      },
                                    ))
                                  ],
                                ),
                                trailing: IconButton(
                                  onPressed: () {
                                    produto.qtd[i] += double.parse(_controllers[i].text);
                                    _controllers[i].text = '';
                                    setState(() {
                                      produto.qtd[i].toString();
                                    });
                                    print(produto.qtd[i]);
                                  },
                                  icon: Icon(
                                    Icons.add_circle,
                                    color: verde,
                                  ),
                                ),
                              ),
                              height: 40,
                            );
                          } else {
                            return null;
                          }
                        },
                        itemCount: produto.tamanho),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
