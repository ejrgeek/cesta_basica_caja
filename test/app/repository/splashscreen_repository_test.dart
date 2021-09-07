import 'package:flutter_test/flutter_test.dart';
import 'package:cesta_basica_caja/app/repository/splashscreen_repository.dart';
 
void main() {
  late SplashscreenRepository repository;

  setUpAll(() {
    repository = SplashscreenRepository();
  });
}