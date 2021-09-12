import 'package:cesta_basica_caja/app/repository/home_repository.dart';
import 'package:cesta_basica_caja/app/repository/create_account_repository.dart';
import 'package:cesta_basica_caja/app/repository/login_repository.dart';
import 'package:cesta_basica_caja/app/repository/splashscreen_repository.dart';
import 'package:cesta_basica_caja/app/services/splashscreen_service.dart';
import 'package:cesta_basica_caja/app/services/home_service.dart';
import 'package:cesta_basica_caja/app/services/create_account_service.dart';
import 'package:cesta_basica_caja/app/services/login_service.dart';
import 'package:cesta_basica_caja/app/modules/create_account/create_account_module.dart';
import 'package:cesta_basica_caja/app/modules/login/login_module.dart';
import 'package:cesta_basica_caja/app/modules/splashscreen/splashscreen_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SplashscreenRepository()),
    Bind.lazySingleton((i) => SplashscreenService()),
    //
    Bind.lazySingleton((i) => LoginService()),
    Bind.lazySingleton((i) => LoginRepository()),
    //
    Bind.lazySingleton((i) => CreateAccountService()),
    Bind.lazySingleton((i) => CreateAccountRepository()),
    //
    Bind.lazySingleton((i) => HomeService()),
    Bind.lazySingleton((i) => HomeRepository()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: SplashscreenModule()),
    //
    ModuleRoute('/login', module: LoginModule()),
    //
    ModuleRoute('/create_account', module: CreateAccountModule()),
    //
    ModuleRoute('/home', module: HomeModule()),
  ];
}
