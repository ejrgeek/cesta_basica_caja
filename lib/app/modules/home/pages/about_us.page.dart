import 'package:cesta_basica_caja/app/shared/utils/theme.util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:kf_drawer/kf_drawer.dart';

// ignore: must_be_immutable
class AboutUsPage extends KFDrawerContent {
  AboutUsPage({Key? key});

  @override
  _AboutUsPageState createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Column(
      children: <Widget>[
        //
        AppBar(
          backgroundColor: ThemeUtil.mainPurpleColor,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: ThemeUtil.whiteColor,
            ),
            onPressed: widget.onMenuPressed,
          ),
          title: Text("Sobre nós"),
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
            child: Column(
              children: [
                //
                Container(
                  width: w * .8,
                  padding: EdgeInsets.only(
                    top: 25,
                    bottom: 5,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "O que é a \"Cesta Básica Caja\"?",
                    style: TextStyle(
                      color: ThemeUtil.mainPurpleColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                //
                Container(
                  width: w * .8,
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      text:
                          "É um projeto de responsabilidade social de iniciativa privada criado pela empresa ",
                      style: TextStyle(
                        color: ThemeUtil.mainPurpleColor,
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(
                          text: "@ejrgeek.io, ",
                          style: TextStyle(
                            color: ThemeUtil.mainPurpleColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: "que tem como objetivo ajudar a população de " +
                                  "Cajazeiras - PB, fazendo doações anônimas, mas " +
                                  "também estimular outras pessoas, empreendedores " +
                                  "e empresários a colaborar com doações para que " +
                                  "mais pessoas possam receber cestas básicas. " +
                                  "Vimos que esses são tempos difíceis em que todos " +
                                  "precisamos nos unir e ajudar outros com o " +
                                  "máximo que nós podemos dar, acreditamos que " +
                                  "outros irão ajudar, mas independente disso nós " +
                                  "continuaremos fazendo o nosso melhor para ajudar " +
                                  "o maior número de pessoas possível.",
                              style: TextStyle(
                                color: ThemeUtil.mainPurpleColor,
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                //
                Container(
                  width: w * .8,
                  padding: EdgeInsets.only(
                    top: 25,
                    bottom: 5,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Sobre ser apoiador",
                    style: TextStyle(
                      color: ThemeUtil.mainPurpleColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                //
                Container(
                  width: w * .8,
                  alignment: Alignment.center,
                  child: Text(
                    "Não aceitamos qualquer tipo de apoio, analisamos todos nossos " +
                        "apoiadores, prezamos por pessoas de boa índole, com desejo " +
                        "de ajudar e vocação para o bem, recusamos qualquer forma de apoio " +
                        "focada em se autopromover.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: ThemeUtil.mainPurpleColor,
                      fontSize: 16,
                    ),
                  ),
                ),
                //
                Container(
                  width: w * .8,
                  padding: EdgeInsets.only(
                    top: 25,
                    bottom: 5,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Política local, regional ou nacional",
                    style: TextStyle(
                      color: ThemeUtil.mainPurpleColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                //
                Container(
                  width: w * .8,
                  alignment: Alignment.center,
                  child: Text(
                    "Não pretendemos fazer nenhuma propaganda política, divulgação, " +
                        "favoritismo ou parceria que favoreça partidos políticos. " +
                        "Pretendemos ajudar as pessoas de forma justa, moral e transparente.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: ThemeUtil.mainPurpleColor,
                      fontSize: 16,
                    ),
                  ),
                ),
                //
                Container(
                  width: w * .8,
                  padding: EdgeInsets.only(
                    top: 25,
                    bottom: 5,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Por que tem propagandas no aplicativo?",
                    style: TextStyle(
                      color: ThemeUtil.mainPurpleColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                //
                Container(
                  width: w * .8,
                  padding: EdgeInsets.only(bottom: 50),
                  alignment: Alignment.center,
                  child: Text(
                    "Pretendemos usar como campo de anuncio futuramente, para " +
                        "arrecadar dinheiro para manter o projeto no ar, send possível " +
                        "anunciar produtos, serviços, empresas e outras coisas que não " +
                        "seja julgado por nós como caráter duvidoso.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: ThemeUtil.mainPurpleColor,
                      fontSize: 16,
                    ),
                  ),
                ),
                //
              ],
            ),
          ),
        ),
        //
      ],
    );
  }
}
