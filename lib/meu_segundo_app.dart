import 'package:flutter/material.dart';
import 'package:meusegundoapp/tela_de_login.dart';

class MeuSegundoApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TelaDeLogin(),
      debugShowCheckedModeBanner: false,
    );
  }
}
