import 'package:flutter_test/flutter_test.dart';
import 'package:cesta_basica_caja/app/repository/home_repository.dart';
 
void main() {
  late HomeRepository repository;

  setUpAll(() {
    repository = HomeRepository();
  });
}