import 'package:flutter_test/flutter_test.dart';
import 'package:cesta_basica_caja/app/services/create_account_service.dart';
 
void main() {
  late CreateAccountService service;

  setUpAll(() {
    service = CreateAccountService();
  });
}