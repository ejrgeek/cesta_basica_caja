import 'dart:developer';

import 'package:cesta_basica_caja/app/shared/utils/theme.util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kf_drawer/kf_drawer.dart';

// ignore: must_be_immutable
class DrawnPeoplePage extends KFDrawerContent {
  DrawnPeoplePage({Key? key});

  @override
  _DrawnPeoplePageState createState() => _DrawnPeoplePageState();
}

class _DrawnPeoplePageState extends State<DrawnPeoplePage> {
  List<Map<String, List<Map<String, dynamic>>>> drawnList = [
    {
      "13 de Setembro de 2021": [
        {
          "imagem":
              "https://instagram.fjdo14-1.fna.fbcdn.net/v/t51.2885-19/s320x320/241510647_910366119829043_1153190481513960003_n.jpg?_nc_ht=instagram.fjdo14-1.fna.fbcdn.net&_nc_ohc=fFSM2oSIzj0AX-ijzq3&edm=ABfd0MgBAAAA&ccb=7-4&oh=45e45d8bb48192b0ff300b786ab6885f&oe=614FB1C3&_nc_sid=7bff83",
          "nome": "Valesca Naiary"
        },
        {
          "imagem":
              "https://instagram.fjdo14-1.fna.fbcdn.net/v/t51.2885-19/s150x150/241510647_910366119829043_1153190481513960003_n.jpg?_nc_ht=instagram.fjdo14-1.fna.fbcdn.net&_nc_ohc=ukJwzmCHW4cAX-z78gY&edm=ABfd0MgBAAAA&ccb=7-4&oh=f65f7a7c2074923c70b6e30f154ed8f4&oe=614708FB&_nc_sid=7bff83",
          "nome": "Valesca Naiary"
        },
      ],
    },
    {
      "13 de Agosto de 2021": [
        {
          "imagem":
              "https://instagram.fjdo14-1.fna.fbcdn.net/v/t51.2885-19/s150x150/241510647_910366119829043_1153190481513960003_n.jpg?_nc_ht=instagram.fjdo14-1.fna.fbcdn.net&_nc_ohc=ukJwzmCHW4cAX-z78gY&edm=ABfd0MgBAAAA&ccb=7-4&oh=f65f7a7c2074923c70b6e30f154ed8f4&oe=614708FB&_nc_sid=7bff83",
          "nome": "Valesca Naiary"
        },
        {
          "imagem":
              "https://instagram.fjdo14-1.fna.fbcdn.net/v/t51.2885-19/s150x150/241510647_910366119829043_1153190481513960003_n.jpg?_nc_ht=instagram.fjdo14-1.fna.fbcdn.net&_nc_ohc=ukJwzmCHW4cAX-z78gY&edm=ABfd0MgBAAAA&ccb=7-4&oh=f65f7a7c2074923c70b6e30f154ed8f4&oe=614708FB&_nc_sid=7bff83",
          "nome": "Valesca Naiary"
        },
        {
          "imagem":
              "https://instagram.fjdo14-1.fna.fbcdn.net/v/t51.2885-19/s150x150/241510647_910366119829043_1153190481513960003_n.jpg?_nc_ht=instagram.fjdo14-1.fna.fbcdn.net&_nc_ohc=ukJwzmCHW4cAX-z78gY&edm=ABfd0MgBAAAA&ccb=7-4&oh=f65f7a7c2074923c70b6e30f154ed8f4&oe=614708FB&_nc_sid=7bff83",
          "nome": "Valesca Naiary"
        },
        {
          "imagem":
              "https://instagram.fjdo14-1.fna.fbcdn.net/v/t51.2885-19/s150x150/241510647_910366119829043_1153190481513960003_n.jpg?_nc_ht=instagram.fjdo14-1.fna.fbcdn.net&_nc_ohc=ukJwzmCHW4cAX-z78gY&edm=ABfd0MgBAAAA&ccb=7-4&oh=f65f7a7c2074923c70b6e30f154ed8f4&oe=614708FB&_nc_sid=7bff83",
          "nome": "Valesca Naiary"
        },
      ],
    },
    {
      "13 de Julho de 2021": [
        {
          "imagem":
              "https://instagram.fjdo14-1.fna.fbcdn.net/v/t51.2885-19/s150x150/241510647_910366119829043_1153190481513960003_n.jpg?_nc_ht=instagram.fjdo14-1.fna.fbcdn.net&_nc_ohc=ukJwzmCHW4cAX-z78gY&edm=ABfd0MgBAAAA&ccb=7-4&oh=f65f7a7c2074923c70b6e30f154ed8f4&oe=614708FB&_nc_sid=7bff83",
          "nome": "Valesca Naiary"
        },
        {
          "imagem":
              "https://instagram.fjdo14-1.fna.fbcdn.net/v/t51.2885-19/s150x150/241510647_910366119829043_1153190481513960003_n.jpg?_nc_ht=instagram.fjdo14-1.fna.fbcdn.net&_nc_ohc=ukJwzmCHW4cAX-z78gY&edm=ABfd0MgBAAAA&ccb=7-4&oh=f65f7a7c2074923c70b6e30f154ed8f4&oe=614708FB&_nc_sid=7bff83",
          "nome": "Valesca Naiary"
        },
      ],
    },
    {
      "13 de Junho de 2021": [
        {
          "imagem":
              "https://instagram.fjdo14-1.fna.fbcdn.net/v/t51.2885-19/s150x150/241510647_910366119829043_1153190481513960003_n.jpg?_nc_ht=instagram.fjdo14-1.fna.fbcdn.net&_nc_ohc=ukJwzmCHW4cAX-z78gY&edm=ABfd0MgBAAAA&ccb=7-4&oh=f65f7a7c2074923c70b6e30f154ed8f4&oe=614708FB&_nc_sid=7bff83",
          "nome": "Valesca Naiary"
        },
        {
          "imagem":
              "https://instagram.fjdo14-1.fna.fbcdn.net/v/t51.2885-19/s150x150/241510647_910366119829043_1153190481513960003_n.jpg?_nc_ht=instagram.fjdo14-1.fna.fbcdn.net&_nc_ohc=ukJwzmCHW4cAX-z78gY&edm=ABfd0MgBAAAA&ccb=7-4&oh=f65f7a7c2074923c70b6e30f154ed8f4&oe=614708FB&_nc_sid=7bff83",
          "nome": "Valesca Naiary"
        },
      ],
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
          title: Text("Sorteados"),
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
        Expanded(
          child: SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: Column(
              children: [
                //
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Text(
                    "Próximo sorteio: 00/00/0000",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                //
                ListView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemCount: drawnList.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (_, index) {
                    String key = drawnList[index]
                        .toString()
                        .split(":")[0]
                        .replaceAll("{", "");
                    return Column(
                      children: [
                        //
                        Text(
                          key,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: ThemeUtil.mainPurpleColor,
                          ),
                        ),
                        //
                        ListView.separated(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (_, subIndex) {
                            var data = drawnList[index][key]![subIndex];

                            return ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                  drawnList[index][key]![subIndex]["imagem"],
                                ),
                              ),
                              title: Text(
                                drawnList[index][key]![subIndex]["nome"],
                              ),
                            );
                          },
                          separatorBuilder: (_, index) {
                            return Divider(
                              color: ThemeUtil.mainPurpleColor,
                            );
                          },
                          itemCount: drawnList[index][key]!.length,
                        ),
                        //
                        //
                      ],
                    );
                  },
                ),
                //
                //
                //
                //
              ],
            ),
          ),
        ),
        //
        //
      ],
    );
  }
}
