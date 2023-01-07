import 'package:cesta_basica_caja/app/shared/utils/theme.util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kf_drawer/kf_drawer.dart';
import 'package:url_launcher/url_launcher.dart' show launch;

import 'donations_monthly.page.dart';

// ignore: must_be_immutable
class DonationsPage extends KFDrawerContent {
  DonationsPage({Key? key});

  @override
  _DonationsPageState createState() => _DonationsPageState();
}

class _DonationsPageState extends State<DonationsPage> {
  List<Map<String, dynamic>> donationsReceived = [
    {
      "nome": "Sabrina Bezerra",
      "data": "19/09/2021",
      "comprovantes": [""],
      "valor": "1000.00"
    },
    {
      "nome": "Erlon Dantas",
      "data": "19/09/2021",
      "comprovantes": [""],
      "valor": "100.00"
    },
    {
      "nome": "Jefferson Viana",
      "data": "19/09/2021",
      "comprovantes": [""],
      "valor": "100.00"
    },
    {
      "nome": "José Henrique",
      "data": "19/09/2021",
      "comprovantes": [""],
      "valor": "100.00"
    },
  ];

  List<Map<String, dynamic>> donationsSent = [
    {
      "nome": "Sabrina Bezerra",
      "data": "19/09/2021",
      "comprovantes": [""],
      "valor": "1000.00"
    },
    {
      "nome": "Erlon Dantas",
      "data": "19/09/2021",
      "comprovantes": [""],
      "valor": "100.00"
    },
    {
      "nome": "Jefferson Viana",
      "data": "19/09/2021",
      "comprovantes": [""],
      "valor": "100.00"
    },
    {
      "nome": "José Henrique",
      "data": "19/09/2021",
      "comprovantes": [""],
      "valor": "100.00"
    },
  ];

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Column(
      children: <Widget>[
        //
        AppBar(
          backgroundColor: ThemeUtil.mainPurpleColor,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: ThemeUtil.whiteColor,
            ),
            onPressed: widget.onMenuPressed,
          ),
          title: Text("Doações"),
          centerTitle: true,
        ),
        //
        Container(
          height: 20,
          width: w,
          alignment: Alignment.center,
          decoration: new BoxDecoration(
            color: ThemeUtil.mainPurpleColor,
            borderRadius: new BorderRadius.vertical(
              bottom: new Radius.elliptical(w, 50),
            ),
          ),
        ),
        //
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 25,
          ),
          child: Container(
            width: w * .9,
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //
                Text(
                  "Total recebido",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: ThemeUtil.mainPurpleColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "R\$ ",
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                    children: [
                      TextSpan(
                        text: "00,",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        children: [
                          TextSpan(
                            text: "00",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                //
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    "Total doado",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: ThemeUtil.mainPurpleColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "R\$ ",
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                    children: [
                      TextSpan(
                        text: "00,",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        children: [
                          TextSpan(
                            text: "00",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                //
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    "Total recebido este mês",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: ThemeUtil.mainPurpleColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "R\$ ",
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                    children: [
                      TextSpan(
                        text: "00,",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        children: [
                          TextSpan(
                            text: "00",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                //
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    "Total doado este mês",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: ThemeUtil.mainPurpleColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "R\$ ",
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                    children: [
                      TextSpan(
                        text: "00,",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        children: [
                          TextSpan(
                            text: "00",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                //
                //
              ],
            ),
          ),
        ),
        //
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DonationMonthlyPage(
                  donations: donationsSent,
                ),
              ),
            );
          },
          child: ListTile(
            title: Text(
              "Entradas",
              style: TextStyle(
                color: ThemeUtil.mainPurpleColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              "Comprovantes mostrando a entrada do dinheiro",
              style: TextStyle(
                color: Colors.black87,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
            ),
          ),
        ),
        //
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DonationMonthlyPage(
                  donations: donationsSent,
                ),
              ),
            );
          },
          child: ListTile(
            title: Text(
              "Saídas",
              style: TextStyle(
                color: ThemeUtil.mainPurpleColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              "Comprovantes mostrando a saída do dinheiro",
              style: TextStyle(
                color: Colors.black87,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
            ),
          ),
        ),
        //
        Padding(
          padding: EdgeInsets.only(top: 15),
          child: Container(
            width: w * .8,
            height: h * .06,
            child: ElevatedButton(
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
                //
                showDialog(
                  context: context,
                  builder: (context) {
                    return Material(
                      color: Colors.transparent,
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                            color: ThemeUtil.whiteColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: w * .8,
                          height: h * .25,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      Modular.to.pop();
                                    },
                                    icon: Icon(
                                      Icons.close,
                                      color: Colors.red,
                                    ),
                                  )
                                ],
                              ),
                              //
                              SvgPicture.asset(
                                ThemeUtil.errorIconDialog,
                              ),
                              //
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 25,
                                  left: 20,
                                  right: 20,
                                ),
                                child: Text(
                                  "Ops, em breve será possível!",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
                //
              },
              child: Text(
                "FAZER UMA DOAÇÃO",
                style: TextStyle(
                  color: ThemeUtil.mainPurpleColor,
                ),
              ),
            ),
          ),
        ),
        //
      ],
    );
  }
}
