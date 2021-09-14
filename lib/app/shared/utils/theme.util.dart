import 'package:flutter/material.dart';

abstract class ThemeUtil {
  //! COLORS
  static final mainPurpleGradient = LinearGradient(
    colors: [
      Color(0xffA920A9).withAlpha(60),
      Color(0xff5F408B),
    ],
    begin: const FractionalOffset(0.0, 1.0),
    end: const FractionalOffset(1.0, 0.0),
    stops: [0.0, 1.0],
    tileMode: TileMode.clamp,
  );

  static const mainPurpleColor = Color(0xff5F408B);
  static const whiteColor = Color(0xfff7f7f7);

  //* ICONS
  static const mainLogo = 'assets/img/icon.png';
  static const mainLogoWhite = 'assets/img/icon-white.png';
  static const whatsappLogo = 'assets/img/whatsapp_white.svg';
  static const confirmationIconDialog =
      'assets/img/confirmation_icon_dialog.svg';
  static const errorIconDialog = 'assets/img/error_icon_dialog.svg';
  static const supermarket = 'assets/img/supermercado.png';

  //? FONTS

}
