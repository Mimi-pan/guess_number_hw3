//ignore_for_file: avoid_print
import 'dart:io';
import 'dart:math';
import 'game.dart';

void main() {
  var isCorrect1= false;
  var game = Game();
  game.playGame();
  do {
    stdout.write('Play again?(Y/N): ');
    var input1 = stdin.readLineSync();
    if(input1!=null) {
      if (input1 == 'y' || input1 == 'Y') {
        game.playGame();
        continue;
      }
      else if (input1 == 'n' || input1 == 'N') {
        break;
      }
      else {
        continue;
      }
    }
  } while (!isCorrect1);

}
