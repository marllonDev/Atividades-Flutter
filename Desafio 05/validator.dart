class ValidateCPF {
  String? cpf;
  int? primeiroDigito;
  int? segundoDigito;

  ValidateCPF({this.cpf, this.primeiroDigito, this.segundoDigito});


  validarPrimeiro(String cpf) {
    String pegarNoveNumeros = cpf.substring(0, 9);

    List<int> separando = pegarNoveNumeros.split('').map(int.parse).toList();
    var result = (separando[8] * 2) +
        (separando[7] * 3) +
        (separando[6] * 4) +
        (separando[5] * 5) +
        (separando[4] * 6) +
        (separando[3] * 7) +
        (separando[2] * 8) +
        (separando[1] * 9) +
        (separando[0] * 10);

    var resto = result % 11;

    if (resto <= 2) {
      this.primeiroDigito = 0;
    } else {
      primeiroDigito = 11 - resto;
    }

    print('Este é o primeiro digito $primeiroDigito');
  }

  validarSegundo(String cpf) {
    String pegarNoveNumeros = cpf.substring(0, 10);

    List<int> separando = pegarNoveNumeros.split('').map(int.parse).toList();
    var result = (separando[9] * 2) +
        (separando[8] * 3) +
        (separando[7] * 4) +
        (separando[6] * 5) +
        (separando[5] * 6) +
        (separando[4] * 7) +
        (separando[3] * 8) +
        (separando[2] * 9) +
        (separando[1] * 10) +
        (separando[0] * 11);

    var resto = result % 11;

    if (resto <= 2) {
      primeiroDigito = 0;
    } else {
      segundoDigito = 11 - resto;
    }

    print('Este é o segundo digito $segundoDigito');
  }
}
