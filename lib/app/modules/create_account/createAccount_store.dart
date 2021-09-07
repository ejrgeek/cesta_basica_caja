import 'package:mobx/mobx.dart';

part 'createAccount_store.g.dart';

class CreateAccountStore = _CreateAccountStoreBase with _$CreateAccountStore;
abstract class _CreateAccountStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}