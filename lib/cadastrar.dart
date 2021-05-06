import 'package:flutter/material.dart';
import 'package:syscpq/drawer.dart';
import 'package:syscpq/elementos/campoTexto.dart';
import 'package:syscpq/elementos/sair.dart';
import 'package:syscpq/main.dart';
import 'package:syscpq/objeto/produto_quimico.dart';

class CadProduto extends StatefulWidget {
  @override
  _CadProdutoState createState() => _CadProdutoState();
}

class _CadProdutoState extends State<CadProduto> {
  // Variáveis para incrementar a quantidade de produtos.
  var txtProduto = TextEditingController();

  // Chave de validação
  var chaveItens = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final ProdutoQuimico produto = ModalRoute.of(context).settings.arguments;

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
        leading: IconButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, '/tela_principal',
                arguments: produto);
          },
          icon: Icon(Icons.arrow_back),
        ),
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
                    produto.nome(i),
                  ),
                  controlAffinity: ListTileControlAffinity.trailing,
                  value: produto.ativo(i),
                  onChanged: (bool marcado) {
                    //produto.ativo(i) = marcado;
                    setState(() {
                      produto.setProdutoAtivo(i, marcado);
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Operação realizada com suscesso.'),
                        duration: Duration(seconds: 3),
                      ),
                    );

                    //print(produto.ativo(i));
                  },
                  activeColor: verde,
                  checkColor: Colors.white,
                );
              },
              itemCount: produto.tamanho(),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 10),
            child: Form(
              key: chaveItens,
              child: FloatingActionButton(
                onPressed: () async {
                  await showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Column(
                            children: [
                              CampoTexto("Nome do produto", false, txtProduto),
                            ],
                          ),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('Cancelar')),
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    if (txtProduto.text.isNotEmpty) {
                                      produto.adicionarItem(txtProduto.text);
                                      txtProduto.clear();
                                      Navigator.pop(context);
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                        content:
                                            Text('Item adicionado com sucesso!'),
                                        duration: Duration(seconds: 3),
                                      ));
                                    } else {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                          SnackBar(content: Text('Não foi inserido! Por favor, informe o nome do produto')));
                                    }
                                  });
                                },
                                child: Text('Inserir'))
                          ],
                        );
                      });
                },
                child: Icon(
                  Icons.add_rounded,
                  size: 50,
                ),
                backgroundColor: verdeEscuro,
                elevation: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
