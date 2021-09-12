import 'package:cesta_basica_caja/app/modules/create_account/create_account_store.dart';
import 'package:cesta_basica_caja/app/shared/utils/theme.util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CellPhoneNumberPage extends StatefulWidget {
  CellPhoneNumberPage();

  @override
  _CellPhoneNumberPageState createState() => _CellPhoneNumberPageState();
}

class _CellPhoneNumberPageState extends State<CellPhoneNumberPage> {
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
            children: [
              //
              Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                  bottom: 15,
                ),
                child: Container(
                  width: w * .8,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ThemeUtil.mainPurpleColor,
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(10),
                        child: SvgPicture.asset(
                          ThemeUtil.whatsappLogo,
                          color: ThemeUtil.mainPurpleColor,
                        ),
                      ),
                      labelText: "Número do celular",
                      labelStyle: TextStyle(
                        color: ThemeUtil.mainPurpleColor,
                      ),
                      hintText: "(83) 0 0000-0000",
                      hintStyle: TextStyle(
                        color: ThemeUtil.mainPurpleColor,
                      ),
                    ),
                  ),
                ),
              ),
              //
              Container(
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
                        print("BATENDO PARA MUDAR");
                        print(store.pagePosition);
                        store.setPagePosition(1);
                        print(store.pagePosition);
                      },
                      child: Text(
                        "CONTINUAR",
                        style: TextStyle(
                          color: ThemeUtil.mainPurpleColor,
                        ),
                      ),
                    );
                  },
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
