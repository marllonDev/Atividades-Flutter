import 'dart:io';
import 'package:desafio06/personagem.dart';

void main(List<String> arguments) {
  Personagem personagem = Personagem();

  print(
      'Você pode escolher 4 personagens diferentes para jogar, escola uma das opções abaixo:');
  stdout.write('Luigi = L , Peach = P , Deise = D , Mário = M  \n R:');
  var personagemEscolhido = stdin.readLineSync();

  switch (personagemEscolhido) {
    case 'L':
      print('Seu personagem escolhido foi ${personagem.luigi}\n -- Bom jogo!!');
    case 'P':
      print('Seu persongem escolhido foi ${personagem.peach}\n -- Bom jogo!!');
    case 'D':
      print('Seu personagem esolhido foi ${personagem.deise}\n -- Bom jogo!!');
    case 'M':
      print('Seu personagem escolhido foi ${personagem.mario}\n -- Bom jogo!!');
      break;
    default:
      print('Você não escolheu nenhum personagem, tente novamente!');
  }
}
