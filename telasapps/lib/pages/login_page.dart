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
      backgroundColor: const Color.fromARGB(255, 224, 240, 217),
      body: SizedBox(
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(
            height: 70,
          ),
          Row(
            children: [
              Expanded(child: Container()),
              Expanded(
                flex: 8,
                child: Image.network(
                  //"https://hermes.digitalinnovation.one/assets/diome/logo.png",
                  "https://www.sescdf.com.br/SiteAssets/marca-sesc-df1/Nova_marca_Sesc_horizontal_CMYK_negativa-01.png",
                ),
              ),
              Expanded(child: Container()),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Já tem cadastro?",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Faça seu login e make the change_",
            style: TextStyle(fontSize: 14),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              height: 30,
              alignment: Alignment.center,
              child: const Row(
                children: [
                  Expanded(flex: 2, child: Text("informe seu e-mail:")),
                  Expanded(flex: 3, child: Text("email")),
                ],
              )),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 30),
            height: 30,
            alignment: Alignment.center,
            child: const Row(
              children: [
                Expanded(flex: 2, child: Text("informe seu senha:")),
                Expanded(flex: 3, child: Text("senha")),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 30),
            color: Colors.green,
            height: 30,
            alignment: Alignment.center,
            child: const Text("login"),
          ),
          Expanded(child: Container()),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            height: 30,
            alignment: Alignment.center,
            child: const Text(
              "Esqueci minha senha",
              style: TextStyle(
                  color: Color.fromARGB(255, 209, 155, 18),
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            height: 30,
            alignment: Alignment.center,
            child: const Text(
              "Criar conta",
              style: TextStyle(
                  color: Colors.blueAccent, fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
        ]),
      ),
    ));
  }
}
