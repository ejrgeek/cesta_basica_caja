import 'package:flutter_test/flutter_test.dart';
import 'package:cesta_basica_caja/app/services/home_service.dart';
 
void main() {
  late HomeService service;

  setUpAll(() {
    service = HomeService();
  });
}