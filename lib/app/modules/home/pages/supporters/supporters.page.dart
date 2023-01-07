import 'package:cesta_basica_caja/app/shared/utils/theme.util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kf_drawer/kf_drawer.dart';
import 'package:url_launcher/url_launcher.dart' show launch;

import 'supporters_monthly.page.dart';

// ignore: must_be_immutable
class SupportersPage extends KFDrawerContent {
  SupportersPage({Key? key});

  @override
  _SupportersPageState createState() => _SupportersPageState();
}

class _SupportersPageState extends State<SupportersPage> {
  List<Map<String, dynamic>> supportersX = [
    {
      "nome": "ejrgeek.io",
      "url": "ejrgeekio.com",
      "imagem":
          "https://ejrgeekio.files.wordpress.com/2021/07/cropped-cropped-icon-menor.png"
    }
  ];

  List<Map<String, dynamic>> supportersLess = [
    {
      "nome": "ejrgeek.io",
      "url": "ejrgeekio.com",
      "imagem":
          "https://ejrgeekio.files.wordpress.com/2021/07/cropped-cropped-icon-menor.png"
    },
    {
      "nome": "ejrgeek.io",
      "url": "ejrgeekio.com",
      "imagem":
          "https://ejrgeekio.files.wordpress.com/2021/07/cropped-cropped-icon-menor.png"
    },
    {
      "nome": "ejrgeek.io",
      "url": "ejrgeekio.com",
      "imagem":
          "https://ejrgeekio.files.wordpress.com/2021/07/cropped-cropped-icon-menor.png"
    },
    {
      "nome": "ejrgeek.io",
      "url": "ejrgeekio.com",
      "imagem":
          "https://ejrgeekio.files.wordpress.com/2021/07/cropped-cropped-icon-menor.png"
    },
    {
      "nome": "ejrgeek.io",
      "url": "ejrgeekio.com",
      "imagem":
          "https://ejrgeekio.files.wordpress.com/2021/07/cropped-cropped-icon-menor.png"
    },
    {
      "nome": "ejrgeek.io",
      "url": "ejrgeekio.com",
      "imagem":
          "https://ejrgeekio.files.wordpress.com/2021/07/cropped-cropped-icon-menor.png"
    },
    {
      "nome": "ejrgeek.io",
      "url": "ejrgeekio.com",
      "imagem":
          "https://ejrgeekio.files.wordpress.com/2021/07/cropped-cropped-icon-menor.png"
    },
    {
      "nome": "ejrgeek.io",
      "url": "ejrgeekio.com",
      "imagem":
          "https://ejrgeekio.files.wordpress.com/2021/07/cropped-cropped-icon-menor.png"
    },
    {
      "nome": "ejrgeek.io",
      "url": "ejrgeekio.com",
      "imagem":
          "https://ejrgeekio.files.wordpress.com/2021/07/cropped-cropped-icon-menor.png"
    },
    {
      "nome": "ejrgeek.io",
      "url": "ejrgeekio.com",
      "imagem":
          "https://ejrgeekio.files.wordpress.com/2021/07/cropped-cropped-icon-menor.png"
    },
    {
      "nome": "ejrgeek.io",
      "url": "ejrgeekio.com",
      "imagem":
          "https://ejrgeekio.files.wordpress.com/2021/07/cropped-cropped-icon-menor.png"
    },
    {
      "nome": "ejrgeek.io",
      "url": "ejrgeekio.com",
      "imagem":
          "https://ejrgeekio.files.wordpress.com/2021/07/cropped-cropped-icon-menor.png"
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
          title: Text("Apoiadores"),
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
        ExpansionTile(
          subtitle: Text(
            "Apoiadores que estão sempre conosco",
            textAlign: TextAlign.left,
          ),
          initiallyExpanded: true,
          title: Text(
            "Apoiadores assíduos",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          children: <Widget>[
            ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (_, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      supportersX[index]["imagem"],
                    ),
                    backgroundColor: ThemeUtil.whiteColor,
                  ),
                  title: Text(supportersX[index]["nome"]),
                  onTap: () {
                    launch(supportersX[index]["url"]);
                  },
                );
              },
              separatorBuilder: (_, index) => Divider(
                color: ThemeUtil.mainPurpleColor,
                thickness: 1,
              ),
              itemCount: supportersX.length,
            ),
          ],
        ),
        //
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SupportersMonthlyPage(
                  supportersMonthlyList: supportersLess,
                ),
              ),
            );
          },
          child: ListTile(
            title: Text(
              "Apoiadores do mês",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "Novos apoiadores do projeto",
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
        //
      ],
    );
  }
}
