import 'package:flutter/material.dart';
import 'package:syscpq/drawer.dart';
import 'package:syscpq/elementos/sair.dart';

class RegCompra extends StatefulWidget {
  @override
  _RegCompraState createState() => _RegCompraState();
}

class _RegCompraState extends State<RegCompra> {
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
    );
  }
}