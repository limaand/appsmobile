import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromARGB(255, 224, 240, 217),
      body: SizedBox(
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(
            height: 70,
          ),
          Container(width: 150, height: 150, color: Colors.amberAccent),
          const SizedBox(
            height: 50,
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 30),
            color: Colors.green,
            height: 30,
            alignment: Alignment.center,
            child: Text("informe seu e-mail"),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 30),
            color: Colors.green,
            height: 30,
            alignment: Alignment.center,
            child: Text("informe sua senha"),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 30),
            color: Colors.green,
            height: 30,
            alignment: Alignment.center,
            child: Text("botao"),
          ),
        ]),
      ),
    ));
  }
}
