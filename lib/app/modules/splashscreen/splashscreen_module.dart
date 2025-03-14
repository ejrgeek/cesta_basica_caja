import 'package:cesta_basica_caja/app/modules/splashscreen/splashscreen_Page.dart';
import 'package:cesta_basica_caja/app/modules/splashscreen/splashscreen_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashscreenModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SplashscreenStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => SplashscreenPage()),
  ];
}
