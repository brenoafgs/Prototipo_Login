import 'package:flutter/material.dart';

class TelaHome extends StatefulWidget {
  final String email;

  TelaHome(this.email, {Key key}) : super(key: key);

  @override
  _TelaHomeState createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {
  String link = '';

  void mostraImagem() {
    link =
    'https://www.concettolabs.com/blog/wp-content/uploads/2019/07/flutter-desktop-app.jpg';
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Homepage'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Bem vindo, ${widget.email}'),
            Container(
                width: 480,
                height: 240,
                child: Image.network(link, fit: BoxFit.fill)),
            FlatButton(
              color: Colors.lightGreen,
              padding: EdgeInsets.all(10),
              onPressed: () => mostraImagem(),
              child: Text('Mostrar Imagem'),
            ),
            FlatButton(
              color: Colors.lightGreen,
              padding: EdgeInsets.all(10),
              onPressed: () => Navigator.pop(context),
              child: Text('Deslogar'),
            )
          ],
        ),
      ),
    );
  }
}
