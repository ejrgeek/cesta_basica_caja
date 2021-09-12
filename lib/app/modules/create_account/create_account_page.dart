import 'package:cesta_basica_caja/app/modules/create_account/pages/cellphone_number.page.dart';
import 'package:cesta_basica_caja/app/modules/create_account/pages/input_confirm_number.page.dart';
import 'package:cesta_basica_caja/app/modules/create_account/pages/input_password.page.dart';
import 'package:cesta_basica_caja/app/modules/create_account/pages/input_personal_data.page.dart';
import 'package:cesta_basica_caja/app/shared/utils/theme.util.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'create_account_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:cesta_basica_caja/app/modules/create_account/create_account_store.dart';
import 'package:flutter/material.dart';

class CreateAccountPage extends StatefulWidget {
  final String title;
  const CreateAccountPage({Key? key, this.title = 'CreateAccountPage'})
      : super(key: key);
  @override
  CreateAccountPageState createState() => CreateAccountPageState();
}

class CreateAccountPageState extends State<CreateAccountPage> {
  final CreateAccountStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    List<Widget> pages = [
      CellPhoneNumberPage(),
      InputConfirmNumberPage(),
      InputPersonalDataPage(),
      InputPasswordPage(),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeUtil.mainPurpleColor,
        title: Observer(
          builder: (_) {
            return Text("Etapa ${store.pagePosition + 1} de 4");
          },
        ),
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          //
          Container(
            height: h * .1,
            width: w,
            alignment: Alignment.center,
            decoration: new BoxDecoration(
              color: ThemeUtil.mainPurpleColor,
              borderRadius: new BorderRadius.vertical(
                bottom: new Radius.elliptical(w, 50),
              ),
            ),
            child: Observer(
              builder: (_) {
                return Container(
                  width: w * .8,
                  child: Text(
                    store.barMessage,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                );
              },
            ),
          ),
          //
          Container(
            height: h * .4,
            child: Observer(
              builder: (_) {
                return pages[store.pagePosition];
              },
            ),
          ),
          //
          //
        ],
      ),
    );
  }
}
