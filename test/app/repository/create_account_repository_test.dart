import 'package:flutter_test/flutter_test.dart';
import 'package:cesta_basica_caja/app/repository/create_account_repository.dart';
 
void main() {
  late CreateAccountRepository repository;

  setUpAll(() {
    repository = CreateAccountRepository();
  });
}