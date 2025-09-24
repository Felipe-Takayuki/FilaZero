import 'package:filazero/app/theme/filazero_theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                Spacer(),
                Text("CPF/SUS"),
                TextFormField(
                  decoration: InputDecoration(hintText: "Digite CPF/SUS"),
                ),
                SizedBox(height: 10),
                Text("SENHA"),

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
                    child: Text("Cadastrar", style: TextStyle(fontSize: 24)),
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      context.go("/sign_in");
                    },
                    child: RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          const TextSpan(text: 'Já tem uma conta? '),
                          TextSpan(
                            text: 'Entrar',
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
