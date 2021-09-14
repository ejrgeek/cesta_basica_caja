import 'package:cesta_basica_caja/app/modules/create_account/create_account_store.dart';
import 'package:cesta_basica_caja/app/shared/utils/theme.util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class InputPersonalDataPage extends StatefulWidget {
  const InputPersonalDataPage({Key? key}) : super(key: key);

  @override
  _InputPersonalDataPageState createState() => _InputPersonalDataPageState();
}

class _InputPersonalDataPageState extends State<InputPersonalDataPage> {
  final GlobalKey _formKey = GlobalKey();
  final CreateAccountStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    TextEditingController _dateController = TextEditingController();

    return Container(
      height: h * .3,
      child: Form(
        key: _formKey,
        child: Container(
          width: w * .8,
          child: Column(
            children: [
              //
              Container(
                padding: EdgeInsets.only(
                  top: 30,
                  bottom: 15,
                ),
                width: w * .8,
                child: TextFormField(
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
                      Icons.person,
                      color: ThemeUtil.mainPurpleColor,
                    ),
                    labelText: "Nome completo",
                    labelStyle: TextStyle(
                      color: ThemeUtil.mainPurpleColor,
                    ),
                    hintText: "Digite seu nome completo",
                    hintStyle: TextStyle(
                      color: ThemeUtil.mainPurpleColor,
                    ),
                  ),
                ),
              ),
              //
              Container(
                padding: EdgeInsets.only(
                  bottom: 15,
                ),
                width: w * .8,
                child: TextFormField(
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
                      Icons.fact_check,
                      color: ThemeUtil.mainPurpleColor,
                    ),
                    labelText: "CPF",
                    labelStyle: TextStyle(
                      color: ThemeUtil.mainPurpleColor,
                    ),
                    hintText: "000.000.000-00",
                    hintStyle: TextStyle(
                      color: ThemeUtil.mainPurpleColor,
                    ),
                  ),
                ),
              ),
              //
              Container(
                padding: EdgeInsets.only(
                  bottom: 15,
                ),
                width: w * .8,
                child: Observer(
                  builder: (_) {
                    return TextFormField(
                      controller: _dateController,
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
                        suffixIcon: IconButton(
                          onPressed: () async {
                            DateTime? datePicker = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1940),
                              lastDate: DateTime.now(),
                            );

                            store.setBirthOfDate(datePicker!);
                            print(store.birthOfDate);
                            _dateController.text = store.birthOfDate;
                          },
                          icon: Icon(
                            Icons.calendar_today,
                            color: ThemeUtil.mainPurpleColor,
                          ),
                        ),
                        labelText: "Data de nascimento",
                        labelStyle: TextStyle(
                          color: ThemeUtil.mainPurpleColor,
                        ),
                        hintText: "Digite ou selecione no icone",
                        hintStyle: TextStyle(
                          color: ThemeUtil.mainPurpleColor,
                        ),
                      ),
                    );
                  },
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
                        store.setPagePosition(3);
                      },
                      child: Text(
                        "CONFIRMAR DADOS",
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
