import 'package:cesta_basica_caja/app/modules/create_account/create_account_store.dart';
import 'package:cesta_basica_caja/app/shared/utils/theme.util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pinput/pin_put/pin_put.dart';

class InputConfirmNumberPage extends StatefulWidget {
  double? h;
  double? w;

  InputConfirmNumberPage({this.h, this.w});

  @override
  _InputConfirmNumberPageState createState() => _InputConfirmNumberPageState();
}

class _InputConfirmNumberPageState extends State<InputConfirmNumberPage> {
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
                  child: PinPut(
                    fieldsCount: 6,
                    separator: Text("-"),
                    separatorPositions: [3],
                    keyboardType: TextInputType.text,
                    followingFieldDecoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: ThemeUtil.mainPurpleColor,
                        ),
                      ),
                    ),
                    submittedFieldDecoration:BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: ThemeUtil.mainPurpleColor,
                        ),
                      ),
                    ),
                    selectedFieldDecoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: ThemeUtil.mainPurpleColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              //
              Container(
                width: w * .8,
                height: h * .06,
                child: Observer(builder: (_) {
                  return ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                          side: BorderSide(
                            color: ThemeUtil.mainPurpleColor,
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {
                      store.setPagePosition(2);
                    },
                    child: Text(
                      "ENVIAR CÓDIGO",
                      style: TextStyle(
                        color: ThemeUtil.mainPurpleColor,
                      ),
                    ),
                  );
                }),
              ),
              //
              TextButton(
                child: Text(
                  "Enviar código novamente",
                  style: TextStyle(
                    color: ThemeUtil.mainPurpleColor,
                  ),
                ),
                onPressed: () {},
              ),
              //
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //
                  Container(
                    width: w * .3,
                    child: Divider(
                      color: ThemeUtil.mainPurpleColor,
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
                        color: ThemeUtil.mainPurpleColor,
                      ),
                    ),
                  ),
                  //
                  Container(
                    width: w * .3,
                    child: Divider(
                      color: ThemeUtil.mainPurpleColor,
                      thickness: 1,
                    ),
                  ),
                  //
                ],
              ),
              //
              TextButton(
                child: Text(
                  "Digitar outro número",
                  style: TextStyle(
                    color: ThemeUtil.mainPurpleColor,
                  ),
                ),
                onPressed: () {
                  store.setPagePosition(0);
                },
              ),
              //
              //
            ],
          ),
        ),
      ),
    );
  }
}






/*


*/