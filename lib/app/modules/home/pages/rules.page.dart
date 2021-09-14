import 'package:cesta_basica_caja/app/shared/utils/theme.util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kf_drawer/kf_drawer.dart';

// ignore: must_be_immutable
class RulesPage extends KFDrawerContent {
  RulesPage({Key? key});

  @override
  _RulesPageState createState() => _RulesPageState();
}

class _RulesPageState extends State<RulesPage> {
  List<String> rules = [
    "Ser cliente do supermercado.",
    "Cliente que ganhar deverá apresentar uma nota fiscal de uma compra (feira) feita anteriormente no supermercado.",
    "Caso integrantes da família (que morem na mesma casa) ganhem algum sorteio juntos, apenas um levará o prêmio e outra pessoa será sorteada.",
    "Caso alguma informação cadastral de algum cliente ganhador seja inválida, outra pessoa será sorteada.",
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
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: ThemeUtil.whiteColor,
            ),
            onPressed: widget.onMenuPressed,
          ),
          title: Text("Regras"),
          actions: [
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: ThemeUtil.whiteColor,
              ),
              onPressed: () {
                //! TODO: IMPLEMENTS NOTIFICATION PAGE
              },
            ),
          ],
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
          child: Container(
            width: w,
            child: Column(
              children: <Widget>[
                ListView.separated(
                  separatorBuilder: (_, index) => Divider(
                    color: ThemeUtil.mainPurpleColor,
                    thickness: 1,
                  ),
                  itemCount: rules.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Text(
                        "${index + 1}",
                        style: TextStyle(
                          color: ThemeUtil.mainPurpleColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      title: Text(rules[index]),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        //
      ],
    );
  }
}
