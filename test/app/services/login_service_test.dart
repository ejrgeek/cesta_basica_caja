import 'package:flutter_test/flutter_test.dart';
import 'package:cesta_basica_caja/app/services/login_service.dart';
 
void main() {
  late LoginService service;

  setUpAll(() {
    service = LoginService();
  });
}