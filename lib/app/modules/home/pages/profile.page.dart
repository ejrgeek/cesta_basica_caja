import 'package:cesta_basica_caja/app/shared/utils/theme.util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kf_drawer/kf_drawer.dart';

// ignore: must_be_immutable
class ProfilePage extends KFDrawerContent {
  ProfilePage({Key? key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
          title: Text("Meu perfil"),
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
          child: Column(
            children: [
              //
              Container(
                width: w * .85,
                padding: EdgeInsets.only(top: 20),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: ThemeUtil.whiteColor,
                    backgroundImage: NetworkImage(
                      "https://instagram.fjdo14-1.fna.fbcdn.net/v/t51.2885-19/s150x150/241510647_910366119829043_1153190481513960003_n.jpg?_nc_ht=instagram.fjdo14-1.fna.fbcdn.net&_nc_ohc=ukJwzmCHW4cAX-z78gY&edm=ABfd0MgBAAAA&ccb=7-4&oh=f65f7a7c2074923c70b6e30f154ed8f4&oe=614708FB&_nc_sid=7bff83",
                    ),
                  ),
                  title: Text(
                    "Valesca Naiary",
                  ),
                  subtitle: Text("(00) 0 0000-0000"),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.camera_alt,
                      color: ThemeUtil.mainPurpleColor,
                    ),
                  ),
                ),
              ),
              //
              //
              Container(
                padding: EdgeInsets.only(bottom: 15, top: 30),
                width: w * .8,
                child: TextFormField(
                  initialValue: "000.000.000-00",
                  enabled: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    disabledBorder: OutlineInputBorder(
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
                      initialValue: "25/04/2000",
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        enabled: false,
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: ThemeUtil.mainPurpleColor,
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.calendar_today,
                          color: ThemeUtil.mainPurpleColor,
                        ),
                        labelText: "Data de nascimento",
                        labelStyle: TextStyle(
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
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      ThemeUtil.whiteColor,
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
                  onPressed: () {},
                  child: Text(
                    "SAIR",
                    style: TextStyle(
                      color: ThemeUtil.mainPurpleColor,
                    ),
                  ),
                ),
              ),
              //
              //
              //
            ],
          ),
        ),
        //
        //
      ],
    );
  }
}
