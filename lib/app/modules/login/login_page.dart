import 'package:flutter_modular/flutter_modular.dart';
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
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xffA920A9).withAlpha(60),
            Color(0xff5F408B),
          ],
          begin: const FractionalOffset(0.0, 1.0),
          end: const FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
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
                      'assets/img/icon.png',
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
                                  Icons.smartphone,
                                  color: Colors.white,
                                ),
                                labelText: "Número do celular",
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
                                //! TODO: IMPLEMENTAR
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
    );
  }
}
