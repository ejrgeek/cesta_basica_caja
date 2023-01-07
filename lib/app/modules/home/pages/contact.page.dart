import 'package:cesta_basica_caja/app/shared/utils/theme.util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kf_drawer/kf_drawer.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class ContactPage extends KFDrawerContent {
  ContactPage({
    Key? key,
  });

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  GlobalKey<FormState> _formKey = new GlobalKey();

  TextEditingController _assunto = TextEditingController();
  TextEditingController _mensagem = TextEditingController();

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
          title: Text("Página de contato"),
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
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // ASSUNTO
                  Container(
                    width: w * .9,
                    padding: EdgeInsets.only(
                      top: 30,
                      left: 20,
                      right: 20,
                      bottom: 10,
                    ),
                    child: TextFormField(
                      maxLength: 25,
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
                        labelText: "Assunto",
                        labelStyle: TextStyle(
                          color: ThemeUtil.mainPurpleColor,
                        ),
                        hintText: "Sobre o que é o contato",
                        hintStyle: TextStyle(
                          color: ThemeUtil.mainPurpleColor,
                        ),
                      ),
                    ),
                  ),
                  // MENSAGEM
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    width: w * .9,
                    child: TextFormField(
                      minLines: 5,
                      maxLines: 5,
                      expands: false,
                      maxLength: 256,
                      decoration: InputDecoration(
                        labelText: 'Mensagem',
                        hintText: 'Digite uma mensagem',
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
                      ),
                      cursorColor: ThemeUtil.mainPurpleColor,
                      keyboardType: TextInputType.text,
                      controller: _mensagem,
                      // ignore: missing_return
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return 'Campo não pode ser vazio';
                        } else if (value.length < 3) {
                          return 'Precisa ter 3 ou mais digitos';
                        }
                        return null;
                      },
                    ),
                  ),
                  // BOTAO
                  Container(
                    width: w * .8,
                    height: h * .06,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          ThemeUtil.whiteColor,
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
                      onPressed: () {},
                      child: Text(
                        "ENVIAR",
                        style: TextStyle(
                          color: ThemeUtil.mainPurpleColor,
                        ),
                      ),
                    ),
                  ),
                  // OUTRAS INFOS
                  Container(
                    padding: EdgeInsets.all(15),
                    alignment: Alignment.topLeft,
                    width: w,
                    child: Column(
                      children: [
                        //
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            'Outras formas de contato:',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 16,
                              color: ThemeUtil.mainPurpleColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        // EMAIL
                        Container(
                          width: w,
                          child: ListTile(
                            trailing: IconButton(
                              alignment: Alignment.centerRight,
                              icon: Icon(
                                Icons.send,
                                color: ThemeUtil.mainPurpleColor,
                              ),
                              tooltip: 'Enviar e-mail',
                              onPressed: () {
                                launch('mailto:contato@ejrgeekio.com');
                              },
                            ),
                            title: Text(
                              'contato@ejrgeekio.com',
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        // Whatsapp
                        Container(
                          child: ListTile(
                            trailing: IconButton(
                              alignment: Alignment.centerRight,
                              icon: SvgPicture.asset(
                                ThemeUtil.whatsappLogo,
                                color: ThemeUtil.mainPurpleColor,
                                height: 24,
                              ),
                              tooltip: 'Chamar no WhatsApp',
                              onPressed: () {
                                launch(
                                  'https://wa.me/message/5FDGMKHDEVUQI1',
                                );
                              },
                            ),
                            title: Text(
                              '(83) 9 9942-3894',
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        //
                      ],
                    ),
                  ),
                  //
                ],
              ),
            ),
            //
          ),
        ),
        //
        //
      ],
    );
  }
}
