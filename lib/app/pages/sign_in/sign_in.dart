import 'package:filazero/app/theme/filazero_theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),

                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: sizeOf.width * .8,
                    child: Image.asset("assets/images/logo/fila_zero.png"),
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Agende sua consulta\nsem filas",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xff949393)),
                  ),
                ),
                Spacer(),
                TextFormField(
                  decoration: InputDecoration(hintText: "Digite CPF/SUS"),
                ),
                SizedBox(height: 10),

                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(hintText: "Digite sua senha"),
                ),
                SizedBox(height: 10),

                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Esqueci minha senha",
                    style: TextStyle(color: FilaZeroTheme.primary),
                  ),
                ),
                SizedBox(height: 10),

                SizedBox(
                  width: sizeOf.width,
                  height: 64,
                  child: ElevatedButton(
                    onPressed: () {
                      context.go("/home");
                    },
                    child: Text("Entrar", style: TextStyle(fontSize: 24)),
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      context.go("/sign_up");
                    },
                    child: RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          const TextSpan(text: 'Não possui uma conta? '),
                          TextSpan(
                            text: 'Cadastre-se',
                            style: TextStyle(color: FilaZeroTheme.primary),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Spacer(flex: 2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
