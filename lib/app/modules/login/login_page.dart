import 'package:cesta_basica_caja/app/shared/utils/theme.util.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cesta_basica_caja/app/modules/login/login_store.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key? key, this.title = 'LoginPage'}) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final LoginStore store = Modular.get<LoginStore>();
  final GlobalKey _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.black12,
      child: Container(
        decoration: BoxDecoration(
          gradient: ThemeUtil.mainPurpleGradient,
        ),
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  //
                  Container(
                    height: h * .1,
                  ),
                  //
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Container(
                      height: h * .15,
                      child: Image.asset(
                        ThemeUtil.mainLogo,
                      ),
                    ),
                  ),
                  //
                  Container(
                    height: h * .4,
                    child: Form(
                      key: _formKey,
                      child: Container(
                        width: w * .8,
                        child: Column(
                          children: [
                            //
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  disabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: SvgPicture.asset(
                                      ThemeUtil.whatsappLogo,
                                    ),
                                  ),
                                  labelText: "Número do whatsapp",
                                  labelStyle: TextStyle(
                                    color: Colors.white,
                                  ),
                                  hintText: "(83) 0 0000-0000",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                            //
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15),
                              child: TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  disabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Colors.white,
                                  ),
                                  suffixIcon: Icon(
                                    Icons.visibility,
                                    color: Colors.white,
                                  ),
                                  labelText: "Senha",
                                  labelStyle: TextStyle(
                                    color: Colors.white,
                                  ),
                                  hintText: "Digite sua senha",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                            //
                            Container(
                              width: w * .8,
                              height: h * .06,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                    Colors.transparent,
                                  ),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                      side: BorderSide(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  //! TODO: IMPLEMENTAR
                                  Modular.to.pushReplacementNamed('/home');
                                },
                                child: Text(
                                  "ENTRAR",
                                ),
                              ),
                            ),
                            //
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 15,
                                top: 15,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  //
                                  Container(
                                    width: w * .3,
                                    child: Divider(
                                      color: Colors.white,
                                      thickness: 1,
                                    ),
                                  ),
                                  //
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                    ),
                                    child: Text(
                                      "OU",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  //
                                  Container(
                                    width: w * .3,
                                    child: Divider(
                                      color: Colors.white,
                                      thickness: 1,
                                    ),
                                  ),
                                  //
                                ],
                              ),
                            ),
                            //
                            Container(
                              width: w * .8,
                              height: h * .06,
                              child: ElevatedButton(
                                onPressed: () {
                                  Modular.to.pushNamed('/create_account');
                                },
                                child: Text(
                                  "CRIAR CONTA",
                                ),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                    Colors.transparent,
                                  ),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                      side: BorderSide(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
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
                  ),
                  //
                ],
              ),
            ),
            persistentFooterButtons: [
              Center(
                child: Text(
                  "Versão 0.0.1a",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
