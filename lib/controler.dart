import 'package:projeto_contador/model.dart';

class ContadorControler {
  final model = ContadorModel();

  void incrementarContador() {
    model.incrementarContador();
  }

  void decrementarContador() {
    model.decrementarContador();
  }

  String getContador() {
    return model.contador.toString();
  }
}
