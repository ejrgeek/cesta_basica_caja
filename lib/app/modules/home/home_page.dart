import 'package:cesta_basica_caja/app/modules/home/home_store.dart';
import 'package:cesta_basica_caja/app/modules/home/pages/rules.page.dart';
import 'package:cesta_basica_caja/app/modules/home/pages/supporters.page.dart';
import 'package:cesta_basica_caja/app/shared/utils/theme.util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:kf_drawer/kf_drawer.dart';

import 'pages/about_us.page.dart';
import 'pages/drawn_people.page.dart';
import 'pages/contact.page.dart';
import 'pages/initial.page.dart';
import 'pages/profile.page.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  late KFDrawerController _drawerController;

  @override
  void initState() {
    super.initState();
    _drawerController = KFDrawerController(
      initialPage: InitialPage(),
      items: [
        KFDrawerItem.initWithPage(
          text: Text('Início', style: TextStyle(color: Colors.white)),
          icon: Icon(Icons.home, color: Colors.white),
          page: InitialPage(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Meu perfil',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.account_circle, color: Colors.white),
          page: ProfilePage(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Sorteados',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.redeem, color: Colors.white),
          page: DrawnPeoplePage(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Apoiadores',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.groups, color: Colors.white),
          page: SupportersPage(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Regras',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          icon: Icon(
            Icons.assignment,
            color: Colors.white,
          ),
          page: RulesPage(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Contato',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          icon: Icon(
            Icons.help_outline,
            color: Colors.white,
          ),
          page: ContactPage(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Sobre nós',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          icon: Icon(
            Icons.info,
            color: Colors.white,
          ),
          page: AboutUsPage(),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: ThemeUtil.mainPurpleColor,
      body: KFDrawer(
        borderRadius: 30,
        shadowBorderRadius: 30,
        scrollable: true,
        controller: _drawerController,
        header: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            padding: EdgeInsets.only(left: 16.0, bottom: 20),
            width: MediaQuery.of(context).size.width * 0.7,
            child: Row(
              children: [
                //
                Image.asset(
                  ThemeUtil.mainLogoWhite,
                  alignment: Alignment.centerLeft,
                  height: 50,
                ),
                //
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Cesta Básica Caja",
                    style: TextStyle(
                      color: ThemeUtil.whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        footer: Container(
          height: h * .3,
          width: w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //
              KFDrawerItem(
                text: Text(
                  'Sair',
                  style: TextStyle(color: Colors.white),
                ),
                icon: Icon(
                  Icons.input,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              //
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Versão 0.0.1a",
                  style: TextStyle(fontSize: 16, color: ThemeUtil.whiteColor),
                ),
              ),
              //
              //
            ],
          ),
        ),
        decoration: BoxDecoration(
          gradient: ThemeUtil.mainPurpleGradient2,
        ),
      ),
    );
  }
}
