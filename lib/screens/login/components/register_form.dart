import 'package:flutter/material.dart';
import 'package:notes_login/provider/functions/functions_provider.dart';
import 'package:notes_login/screens/login/widget/buttons/elevatedbutton_blue.dart';
import 'package:notes_login/screens/login/widget/buttons/textbutton_change_screen.dart';
import 'package:notes_login/screens/login/widget/form/box_text_form_field.dart';
import 'package:notes_login/theme/theme_colors.dart';
import 'package:provider/provider.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final email = TextEditingController();
    final name = TextEditingController();
    final password = TextEditingController();
    final passwordConfirm = TextEditingController();

    return Consumer<FunctionsProvider>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.fromLTRB(30, 50, 30, 0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  'Crie sua conta',
                  style: TextStyle(color: ThemeColors.color4),
                ),
              ),
              SizedBox(
                height: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BoxTextFormField(
                      inside: TextFormField(
                        controller: name,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Digite seu nome',
                        ),
                        keyboardType: TextInputType.name,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Campo vazio. Digite seu nome';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    BoxTextFormField(
                      inside: TextFormField(
                        controller: email,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Digite seu email',
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Campo vazio. Digite um email!';
                          } else if (value.contains('@') &&
                              value.contains('.com')) {
                            return null;
                          } else {
                            return 'Digite um email válido!';
                          }
                        },
                      ),
                    ),
                    BoxTextFormField(
                      inside: TextFormField(
                        controller: password,
                        style: const TextStyle(color: Colors.white),
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Digite sua senha',
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Campo vazio. Digite sua senha!';
                          } else if (value.length < 6) {
                            return 'Sua senha deve ter no mínimo 6 caracteres!';
                          } else if (value != passwordConfirm.text) {
                            return 'As senhas não coincidem';
                          }
                          return null;
                        },
                      ),
                    ),
                    BoxTextFormField(
                      inside: TextFormField(
                        controller: passwordConfirm,
                        style: const TextStyle(color: Colors.white),
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Confirme sua senha',
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Campo vazio. Digite sua senha!';
                          } else if (value.length < 6) {
                            return 'Sua senha deve ter no mínimo 6 caracteres!';
                          } else if (value != password.text) {
                            return 'As senhas não coincidem';
                          }
                          return null;
                        },
                      ),
                    ),
                    ElevatedButtonLoginRegister(
                      formKey: formKey,
                      email: email,
                      password: password,
                      name: name,
                    ),
                    const TextButtonChangeScreen(
                        text: 'Voltar para tela de login'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
