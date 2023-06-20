import 'validator.dart';

void main(List<String> args) {
  var primeiroCpf = ValidateCPF();
  primeiroCpf.validarPrimeiro("111444777");
  primeiroCpf.validarSegundo("1114447773");
}
