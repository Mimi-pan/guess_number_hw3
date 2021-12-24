//ignore_for_file: avoid_print
import 'dart:io';
import 'dart:math';

class Game {
  static const maxRandom=100;
  int? answer;
  int count=0;
  //bool check=true;
  Game()
  {
    var r = Random();
    answer=r.nextInt(maxRandom)+1;
  }
  int doGuess(int x) {
    if (x > answer!) {
      count++;
      return 1;
    }
    else if (x < answer!) {
      count++;
      return -1;
    }
    else {
      count++;
      return 0;
    }
  }
  void playGame()
  {
    const maxRandom = 100;
    var game = Game();
    var isCorrect = false;

    print('╔════════════════════════════════════════');
    print('║            GUESS THE NUMBER            ');
    print('╟────────────────────────────────────────');

    do {
      stdout.write('║ Guess the number between 1 and $maxRandom: ');
      var input = stdin.readLineSync();
      var guess = int.tryParse(input!);
      if (guess == null) {
        continue;
      }
      var result = game.doGuess(guess);
      var count = game.count;

      if (result == 1) {
        print('║ ➜ $guess is TOO HIGH! ▲');
        print('╟────────────────────────────────────────');
      } else if (result == -1) {
        print('║ ➜ $guess is TOO LOW! ▼');
        print('╟────────────────────────────────────────');
      } else if (result == 0){
        print('║ ➜ $guess is CORRECT ❤, total guesses: $count');
        print('╟────────────────────────────────────────');
        break;
      }
    } while (true);
    print('║                 THE END                ');
    print('╚════════════════════════════════════════');
  }
}
