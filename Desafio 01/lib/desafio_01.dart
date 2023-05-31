void main(List<String> args) {
  calculoIMC(80.0, 1.78);
}

calculoIMC(double peso, double altura) {
  var resultado = peso / (altura * altura);
  print('Seu IMC é ${resultado.toStringAsFixed(3)}');
}
