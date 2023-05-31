void main(List<String> args) {
  int numero = 10;
  int resultado = soma(numero);

  print('A soma dos inteiros de 1 a $numero é $resultado');
}

soma(int valor) {
  if (valor == 1) {
    return 1;
  } else {
    return valor + soma(valor - 1);
  }
}
