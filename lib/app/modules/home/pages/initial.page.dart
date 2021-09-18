import 'package:cesta_basica_caja/app/shared/components/ticket_ui.dart';
import 'package:cesta_basica_caja/app/shared/utils/theme.util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:kf_drawer/kf_drawer.dart';

// ignore: must_be_immutable
class InitialPage extends KFDrawerContent {
  InitialPage({Key? key});

  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
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
          title: Text("Página inicial"),
          centerTitle: true,
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
          child: Column(
            children: <Widget>[
              //
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                ),
                child: Text(
                  'Ficha do sorteio',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                ),
              ),
              //
              Stack(
                children: [
                  //
                  Container(
                    child: CustomPaint(
                      size: Size(w * .8, (h * .2).toDouble()),
                      painter: RPSCustomPainter(),
                    ),
                  ),
                  //
                  Container(
                    padding: EdgeInsets.only(left: w * .2),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "21",
                      style: TextStyle(
                        fontSize: 50,
                        color: ThemeUtil.whiteColor,
                      ),
                    ),
                    width: w * .8,
                    height: h * .2,
                  )
                ],
              ),
              /*
              Container(
                width: w * .8,
                height: h * .15,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  shape: BoxShape.rectangle,
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.amber,
                        Colors.yellowAccent,
                        Colors.amber,
                        Colors.yellow,
                        Colors.yellowAccent
                      ]),
                  borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(30),
                    bottomEnd: Radius.circular(15),
                    bottomStart: Radius.circular(10),
                    topEnd: Radius.circular(10),
                  ),
                ),
                child: Row(
                  children: [
                    //
                    Expanded(
                      flex: 1,
                      child: RotatedBox(
                        quarterTurns: 1,
                        child: Text(
                          "★  ★  ★",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    //
                    Expanded(flex: 2, child: Container()),
                    //
                    Expanded(
                      flex: 3,
                      child: Text(
                        "22",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    //
                    Expanded(flex: 3, child: Container()),
                    //
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                            ),
                          ),
                        ),
                        child: RotatedBox(
                          quarterTurns: 1,
                          child: Text(
                            "Número",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              */
              //

              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  width: w * .8,
                  height: h * .3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border:
                        Border.all(width: 2, color: ThemeUtil.mainPurpleColor),
                  ),
                  child: Column(
                    children: [
                      //
                      Text(
                        "Próximo sorteio",
                        style: TextStyle(fontSize: 18, color: Colors.black87),
                      ),
                      //
                      Text(
                        "00/00/0000",
                      ),
                      //
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Image.asset(ThemeUtil.supermarket),
                      ),
                    ],
                  ),
                ),
              ),

              //
              //
            ],
          ),
        ),
        //
        /*
        Container(
          width: w * .8,
          height: h * .2,
          color: Colors.red,
          alignment: Alignment.center,
          child: Text("PROPAGANDAS"),
        ),
        */
        //
      ],
    );
  }
}
