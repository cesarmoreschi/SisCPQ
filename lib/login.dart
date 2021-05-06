import 'package:flutter/material.dart';
import 'package:syscpq/elementos/campoTexto.dart';
import 'package:syscpq/objeto/produto_quimico.dart';
//import 'package:google_fonts/google_fonts.dart';
//import 'package:syscpq/drawer.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // Variáveis de texto
  var usuario = TextEditingController();
  var senhaUsuario = TextEditingController();

  // Chave do formulário
  var chave = GlobalKey<FormState>();

  //Criando nossa lista de produtos
  ProdutoQuimico produto = ProdutoQuimico();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'SisCPQ',
          style: Theme.of(context).textTheme.headline1,
        ),
        backgroundColor: Color.fromRGBO(0, 89, 64, 1.0),
        automaticallyImplyLeading: false,
      ),
      //drawer: MeuMenu(),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Form(
          key: chave,
          child: Column(
            children: [
              Container(
                  height: 200,
                  width: 200,
                  margin: EdgeInsets.all(20),
                  child: Image.asset('lib/imagens/logo_fmrp.png')),
              SizedBox(
                height: 20,
              ),
              CampoTexto('Nº USP', false, usuario),
              SizedBox(
                height: 20,
              ),
              CampoTexto('SENHA', true, senhaUsuario),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    if (chave.currentState.validate())
                      Navigator.pushNamed(context, '/tela_principal', arguments: produto);
                  },
                  child: Text('Entrar'),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(0, 89, 64, 1.0),
                    textStyle: TextStyle(fontSize: 20),
                  ),
                ),
                width: 160,
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*Widget campoTexto(titulo, senha, conteudo) {
  return TextFormField(
    controller: conteudo,
    textAlign: TextAlign.center,
    decoration: InputDecoration(
      labelText: titulo,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    validator: (valor) {
      print('Entrou no validador $conteudo, $valor');
      if (double.tryParse(valor) == null) {
        return 'Valor inválido';
      } else {
        return null;
      }
    },
    obscureText: senha,
  );
}*/
