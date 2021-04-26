import 'package:flutter/material.dart';

class Sair extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.logout),
      onPressed: () {
        Navigator.popAndPushNamed(context, '/login');
      },
    );
  }
}
