import 'package:flutter_test/flutter_test.dart';
import 'package:cesta_basica_caja/app/repository/login_repository.dart';
 
void main() {
  late LoginRepository repository;

  setUpAll(() {
    repository = LoginRepository();
  });
}