import 'dart:io';
import 'dart:math';

void main() {
  print('╔═══════════════════════════════════════════════');
  print('║               GUESS THE NUMBER                ');
  print('╟───────────────────────────────────────────────');
  stdout.write('║ Enter max number you want to guess: ');
  String? inputRandom = stdin.readLineSync();
  var maxRandom = int.tryParse(inputRandom!);
  Game game = Game(maxRandom!);
  print('╟───────────────────────────────────────────────');
  var isCorrect = false;
  do {
    stdout.write('║ Guess the number between 1 and $maxRandom: ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);

    if (guess != null) {
      Map resultMap = game.doGuess(guess);
      isCorrect = resultMap['isCorrect'];
      var message = resultMap['text'];
      print('║ ➜ $guess : $message');
      print('╟───────────────────────────────────────────────');
    }
  } while (!isCorrect);
  var total = game.getTotalGuesses();
  print('║ Total guess: $total');
  print('╟───────────────────────────────────────────────');
  print('║                    THE END                    ');
  print('╚═══════════════════════════════════════════════');
}

class Game {
  late int answer;
  int count =0;
  static const List feedbackList = [
    {
      'text': 'TOO HIGH! ▲',
      'isCorrect': false,
    },
    {
      'text': 'TOO LOW! ▼',
      'isCorrect': false,
    },
    {
      'text': 'CORRECT ❤',
      'isCorrect': true,
    },
  ];

  Game(int max) {
    this.answer = Random().nextInt(max) + 1;
  }


  Map doGuess(int num) {
    count++;
    if (num > this.answer) {
      return feedbackList[0];
    } else if (num < this.answer) {
      return feedbackList[1];
    } else {
      return feedbackList[2];
    }
  }

  getTotalGuesses(){
    return count;
  }

}