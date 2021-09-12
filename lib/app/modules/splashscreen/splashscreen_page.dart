import 'package:cesta_basica_caja/app/shared/utils/theme.util.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:cesta_basica_caja/app/modules/splashscreen/splashscreen_store.dart';
import 'package:flutter/material.dart';

class SplashscreenPage extends StatefulWidget {
  final String title;
  const SplashscreenPage({Key? key, this.title = 'SplashscreenPage'})
      : super(key: key);
  @override
  SplashscreenPageState createState() => SplashscreenPageState();
}

class SplashscreenPageState extends State<SplashscreenPage> {
  final SplashscreenStore store = Modular.get<SplashscreenStore>();

  goToLoginOrHome() {
    Future.delayed(
      Duration(seconds: 2),
      () => Modular.to.pushReplacementNamed('/login'),
    );
  }

  @override
  void initState() {
    super.initState();
    goToLoginOrHome();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: Container(
        decoration: BoxDecoration(
          gradient: ThemeUtil.mainPurpleGradient,
        ),
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: <Widget>[
                //
                Expanded(
                  flex: 3,
                  child: Container(),
                ),
                //
                Expanded(
                  flex: 2,
                  child: Image.asset(
                    ThemeUtil.mainLogo,
                  ),
                ),
                //
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      //
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "Cesta Básica Caja",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      //
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "Iniciativa privada social",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      //
                    ],
                  ),
                ),
                //
                Expanded(
                  flex: 2,
                  child: Container(),
                ),
                //
                Expanded(
                  flex: 1,
                  child: Text(
                    "Iniciativa por @ejrgeek.io",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                //
              ],
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
