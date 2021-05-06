//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:syscpq/drawer.dart';
//import 'package:syscpq/elementos/campoTexto.dart';
import 'package:syscpq/elementos/sair.dart';
import 'package:syscpq/main.dart';
import 'package:syscpq/objeto/produto_quimico.dart';

class RegCompra extends StatefulWidget {
  @override
  _RegCompraState createState() => _RegCompraState();
}

class _RegCompraState extends State<RegCompra> {
  
  //var addQtd = TextEditingController();
  List<TextEditingController> _controllers = [];

  @override
  Widget build(BuildContext context) {
    final ProdutoQuimico produto = ModalRoute.of(context).settings.arguments;
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
                leading: IconButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, '/tela_principal',
                arguments: produto);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      drawer: MeuMenu(),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(children: [
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
                    )),
                  ]),
                  Expanded(
                    child: Container(
                      child: ListView.builder(
                          itemBuilder: (context, i) {
                            _controllers.add(new TextEditingController());
                            return Visibility(
                              visible: produto.ativo(i),
                              child: Container(
                                child: ListTile(
                                  title: Row(
                                    children: [
                                      SizedBox(
                                        child: Text(
                                          produto.nome(i),
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline2,
                                        ),
                                        width:
                                            MediaQuery.of(context).size.width * 0.4,
                                      ),
                                      SizedBox(
                                        child: Text(
                                          produto.qtd(i).toString(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline2,
                                        ),
                                        width: 100,
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5))),
                                        controller: _controllers[i],
                                      )),
                                    ],
                                  ),
                                  trailing: IconButton(
                                    onPressed: () {
                                      produto.setProdutoQtd(i, double.parse(_controllers[i].text));
                                      _controllers[i].text = '';
                                      setState(() {
                                        produto.qtd(i).toString();
                                      });
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                          content: Text('Operação realizada com suscesso.'),
                                          duration: Duration(seconds: 3),
                                        ),
                                      );
                                      //print(produto.qtd(i));
                                    },
                                    icon: Icon(
                                      Icons.add_circle,
                                      color: verde,
                                    ),
                                  ),
                                ),
                                height: 40,
                              ),
                            );
                          },
                          itemCount: produto.tamanho(),
                      ),
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
