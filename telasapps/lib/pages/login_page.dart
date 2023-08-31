import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController();
  var senhaController = TextEditingController();

  //String email = "";
  //String senha = "";
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 240, 217),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const SizedBox(
              height: 70,
            ),
            Row(
              children: [
                Expanded(child: Container()),
                Expanded(
                  flex: 8,
                  child: Image.network(
                    "https://hermes.digitalinnovation.one/assets/diome/logo.png",
                    //"https://www.sescdf.com.br/SiteAssets/marca-sesc-df1/Nova_marca_Sesc_horizontal_CMYK_negativa-01.png",
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
              child: TextField(
                controller: emailController,
                onChanged: (value) {
                  debugPrint(value);
                },
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(top: 0),
                    hintText: "E-mail",
                    hintStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.email_rounded)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                height: 30,
                alignment: Alignment.center,
                child: TextField(
                  //esconde a senha

                  obscureText: isObscureText,
                  controller: senhaController,
                  onChanged: (value) {
                    debugPrint(value);
                  },
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(top: 0),
                      hintText: "Senha",
                      hintStyle: const TextStyle(color: Colors.black),
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: InkWell(
                        //efeito de visibilidade da senha

                        onTap: () {
                          setState(() {
                            isObscureText = !isObscureText;
                          });
                        },
                        child: Icon(isObscureText
                            ? Icons.visibility_off
                            : Icons.visibility),
                      )),
                )),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              height: 30,
              alignment: Alignment.center,
              child: SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    debugPrint(emailController.text);
                    debugPrint(senhaController.text);
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.amberAccent),
                  ),
                  child: const Text(
                    "Entrar",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
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
                ),
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
      ),
    ));
  }
}
