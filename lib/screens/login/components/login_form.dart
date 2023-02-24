import 'package:flutter/material.dart';
import 'package:notes_login/provider/functions/functions_provider.dart';
import 'package:notes_login/screens/login/widget/textbutton_change_screen.dart';
import 'package:notes_login/theme/theme_colors.dart';
import 'package:provider/provider.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final email = TextEditingController();
    final password = TextEditingController();

    return Consumer<FunctionsProvider>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.fromLTRB(30, 50, 30, 0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20),
                height: 50,
                decoration: BoxDecoration(
                    color: ThemeColors.myWhite,
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  controller: email,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Digite seu Email',
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Informe o email corretamente!';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  padding: const EdgeInsets.only(left: 20),
                  height: 50,
                  decoration: BoxDecoration(
                      color: ThemeColors.myWhite,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    controller: password,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Digite sua senha',
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Informe o email corretamente!';
                      } else if (value.length < 6) {
                        return 'Sua senha deve ter no mínimo 6 caracteres!';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            value.login(context, email, password);
                          }
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(fontSize: 18),
                        ))),
              ),
              const TextButtonChangeScreen(
                text: 'Ainda não tem cadastro? cadastre-se agora!',
              )
            ],
          ),
        ),
      ),
    );
  }
}
