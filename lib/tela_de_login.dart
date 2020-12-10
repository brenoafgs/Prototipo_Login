import 'package:flutter/material.dart';

import 'home.dart';

class TelaDeLogin extends StatefulWidget {
  TelaDeLogin({Key key}) : super(key: key);


  @override
  _TelaDeLoginState createState() => _TelaDeLoginState();
}

class _TelaDeLoginState extends State<TelaDeLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
      ),
      body: Center(
        child: Tela(),
      ),
    );
  }
}

class TextFieldDeLogin extends StatelessWidget {
  final String descricao;
  final bool obscuro;
  final Function(String txt) onAlteraEntrada;

  const TextFieldDeLogin({
    Key key,
    this.descricao,
    this.obscuro,
    this.onAlteraEntrada,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextField(
        onChanged: onAlteraEntrada,
        obscureText: obscuro,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: descricao,
        ),
      ),
    );
  }
}

class Tela extends StatefulWidget {
  @override
  _TelaState createState() => _TelaState();
}

class _TelaState extends State<Tela> {
  String avisoErro = '';
  String email;
  String senha;

  void checaLogin() {
    setState(() {
      bool seEmailEhValido = email != null && email.isNotEmpty;
      bool seSenhaEhValida = senha != null && senha.isNotEmpty;

      if (seEmailEhValido && seSenhaEhValida) {
        avisoErro = '';
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => TelaHome(email)));
      } else {
        avisoErro = 'É necessário inserir login e senha';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            avisoErro,
            style: TextStyle(color: Colors.red.withOpacity(1)),
          ),
        ),
        TextFieldDeLogin(
          descricao: 'E-mail',
          obscuro: false,
          onAlteraEntrada: (String txt) => email = txt,
        ),
        TextFieldDeLogin(
          descricao: 'Senha',
          obscuro: true,
          onAlteraEntrada: (String txt) => senha = txt,
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: FlatButton(
            color: Colors.lightGreen,
            padding: EdgeInsets.all(10),
            onPressed: () => checaLogin(),
            child: Text('LOGAR'),
          ),
        )
      ],
    );
  }
}
