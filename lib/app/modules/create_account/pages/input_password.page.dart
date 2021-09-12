import 'package:cesta_basica_caja/app/modules/create_account/create_account_store.dart';
import 'package:cesta_basica_caja/app/modules/home/home_page.dart';
import 'package:cesta_basica_caja/app/shared/utils/theme.util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';

class InputPasswordPage extends StatefulWidget {
  const InputPasswordPage({Key? key}) : super(key: key);

  @override
  _InputPasswordPageState createState() => _InputPasswordPageState();
}

class _InputPasswordPageState extends State<InputPasswordPage> {
  final GlobalKey _formKey = GlobalKey();
  final CreateAccountStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Container(
      height: h * .3,
      child: Form(
        key: _formKey,
        child: Container(
          width: w * .8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //
              Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                  bottom: 5,
                ),
                child: Container(
                  width: w * .8,
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ThemeUtil.mainPurpleColor,
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ThemeUtil.mainPurpleColor,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ThemeUtil.mainPurpleColor,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: ThemeUtil.mainPurpleColor,
                      ),
                      suffixIcon: Icon(
                        Icons.visibility,
                        color: ThemeUtil.mainPurpleColor,
                      ),
                      labelText: "Senha",
                      labelStyle: TextStyle(
                        color: ThemeUtil.mainPurpleColor,
                      ),
                      hintText: "Digite sua senha",
                      hintStyle: TextStyle(
                        color: ThemeUtil.mainPurpleColor,
                      ),
                    ),
                  ),
                ),
              ),
              //
              Text(
                "● A senha precisa ter no mínimo 8 digitos",
              ),
              Text(
                "● A senha precisa ter pelo menos 1 número",
              ),
              //
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Container(
                  width: w * .8,
                  height: h * .06,
                  child: Observer(
                    builder: (_) {
                      return ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.white,
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                              side: BorderSide(
                                color: ThemeUtil.mainPurpleColor,
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {
                          //
                          showDialog(
                            context: context,
                            builder: (context) {
                              return Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: ThemeUtil.whiteColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  width: w * .8,
                                  height: h * .3,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      //
                                      SvgPicture.asset(
                                        ThemeUtil.confirmationIconDialog,
                                      ),
                                      //
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 25,
                                          left: 20,
                                          right: 20,
                                        ),
                                        child: Text(
                                          "Olá, Fulana! Sua conta foi criada, você ja pode entrar.",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                          //
                          Future.delayed(
                            Duration(seconds: 2),
                            () {
                              Modular.to.pop();
                              Modular.to.pop();
                              Modular.to.pushReplacementNamed('/home');
                            },
                          );
                          //
                        },
                        child: Text(
                          "CONFIRMAR SENHA",
                          style: TextStyle(
                            color: ThemeUtil.mainPurpleColor,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              //
              //
              //
            ],
          ),
        ),
      ),
    );
  }
}
