import 'dart:io';
import 'dart:math';

void main(){
  print('          Guess The Number          ');
  var r = Random();
  var ans = r.nextInt(100) + 1;
  var guess;
  int count = 0;
 do {
   stdout.write('Guess the number betwwen 1 and 100 : ');
   var input = stdin.readLineSync();


   guess = int.tryParse(input!);
   if (guess == null) {

     continue;
   }
    count++;
   if (ans == guess) {
     print('$guess Correct!! ,Total guesses : $count');

   }
   else if(ans<guess) {
     print('Incorrect $guess To High');
   }
   else{
     print('Incorrect $guess To Low');
   }
 }while (guess != ans);
 print(" --- The End :) --- ");


}