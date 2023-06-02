import 'dart:io';

calculoCruzado(
    {var X = null,
    required num Y,
    required num valorUm,
    required num valorDois}) {
  var cruzadoUm = valorDois * Y;
  var resultDivisao = cruzadoUm / valorUm;
  X = resultDivisao;

  print('O resultado de X é $X');
}

/*
Colinha:
 valorUm  --- Y
 valorDois -- X
*/

void main(List<String> args) {
  stdout.write('Qual o valor total? ');
  var valorTotal = int.parse(stdin.readLineSync()!);

  stdout.write('Qual o valor que representa esse total? ');
  var valorRepresentanteTotal = int.parse(stdin.readLineSync()!);

  stdout.write(
      'Qual o valor tendo como referência o Total, que você deseja descobrir o "X" equivalente? ');
  var valorReferencia = int.parse(stdin.readLineSync()!);

  calculoCruzado(Y: valorRepresentanteTotal, valorUm: valorTotal, valorDois: valorReferencia);
}
