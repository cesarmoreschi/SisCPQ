import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:syscpq/main.dart';

class MeuMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.arrow_right),
              title: Text(
                'Registrar compra',
                style: Theme.of(context).textTheme.headline2,
              ),
              onTap: () {
                Navigator.popAndPushNamed(context, '/comprar');
              },
              hoverColor: verde,
            ),
            ListTile(
              leading: Icon(Icons.arrow_right),
              title: Text(
                'Registrar utilização',
                style: Theme.of(context).textTheme.headline2,
              ),
              onTap: () {
                Navigator.popAndPushNamed(context, '/utilizar');
              },
              hoverColor: verde,
            ),
            ListTile(
              leading: Icon(Icons.arrow_right),
              title: Text(
                'Registrar produtos',
                style: Theme.of(context).textTheme.headline2,
              ),
              onTap: () {
                Navigator.popAndPushNamed(context, '/cadastrar');
              },
              hoverColor: verde,
            ),
            ListTile(
              leading: Icon(Icons.arrow_right),
              title: Text(
                "Sobre",
                style: Theme.of(context).textTheme.headline2,
              ),
              onTap: () {
                Navigator.popAndPushNamed(context, '/sobre');
              },
              hoverColor: verde,
            ),
          ],
        ),
        color: Color.fromRGBO(229, 244, 239, .50),
      ),
    );
  }
}
