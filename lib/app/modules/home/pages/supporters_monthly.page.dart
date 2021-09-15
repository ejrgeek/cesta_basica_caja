import 'package:cesta_basica_caja/app/shared/utils/theme.util.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class SupportersMonthlyPage extends StatelessWidget {
  List<Map<String, dynamic>>? supportersMonthlyList;

  SupportersMonthlyPage({this.supportersMonthlyList});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Material(
      child: Column(
        children: [
          AppBar(
            backgroundColor: ThemeUtil.mainPurpleColor,
            title: Text("Apoiadores do mês"),
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
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (_, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      supportersMonthlyList![index]["imagem"],
                    ),
                    backgroundColor: ThemeUtil.whiteColor,
                  ),
                  title: Text(supportersMonthlyList![index]["nome"]),
                  onTap: () {
                    launch(supportersMonthlyList![index]["url"]);
                  },
                );
              },
              separatorBuilder: (_, index) => Divider(
                color: ThemeUtil.mainPurpleColor,
                thickness: 1,
              ),
              itemCount: supportersMonthlyList!.length,
            ),
          ),
        ],
      ),
    );
  }
}
