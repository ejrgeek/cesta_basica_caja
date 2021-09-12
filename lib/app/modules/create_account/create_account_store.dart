import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';

part 'create_account_store.g.dart';

class CreateAccountStore = _CreateAccountStoreBase with _$CreateAccountStore;

abstract class _CreateAccountStoreBase with Store {
  @observable
  int pagePosition = 0;

  @observable
  String barMessage = "Pedimos que você digite seu número do Whatsapp";

  @action
  setBarMessage(int position) {
    switch (position) {
      case 0:
        barMessage = "Pedimos que você digite seu número do Whatsapp";
        break;
      case 1:
        barMessage = "Agora digite o código que você recebeu pelo Whatsapp";
        break;
      case 2:
        barMessage =
            "Quase lá, nos informe seus dados para podermos saber quem você é";
        break;
      case 3:
        barMessage =
            "Pronto, agora só basta criar uma senha segura para entrar";
        break;
      default:
    }
  }

  @action
  setPagePosition(int position) {
    this.pagePosition = position;
    this.setBarMessage(position);
  }

  @observable
  String birthOfDate = "";

  @action
  setBirthOfDate(DateTime date){
    this.birthOfDate = DateFormat("dd/MM/yyyy").format(date).toString();
  }
}
