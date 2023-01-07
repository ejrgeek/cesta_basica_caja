import 'package:cesta_basica_caja/app/shared/utils/theme.util.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class DonationMonthlyPage extends StatelessWidget {
  List<Map<String, dynamic>>? donations;

  DonationMonthlyPage({this.donations});

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
                  leading: Icon(
                    Icons.document_scanner,
                  ),
                  trailing: Text("R\$ ${donations![index]['valor']}"),
                  title: Text(donations![index]["nome"]),
                  subtitle: Text(donations![index]["data"]),
                  onTap: () {
                    //! COMPROVANTES IMPLEMENTAR PERCORRER E BAIXAR
                    //launch(donations![index]["comprovantes"]);
                  },
                );
              },
              separatorBuilder: (_, index) => Divider(
                color: ThemeUtil.mainPurpleColor,
                thickness: 1,
              ),
              itemCount: donations!.length,
            ),
          ),
        ],
      ),
    );
  }
}
