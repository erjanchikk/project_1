import 'dart:math';
import 'dart:io';
import 'package:ls_4/ls_4.dart';

void main(List<String> arguments) {
//   int n =5;
//   recurc(n);

// print('ОТгадай число 0-10');
// int number = int.parse(stdin.readLineSync()!);
// int randomnumber = Random().nextInt(10);
// while (number != randomnumber ) {
//   if (number < randomnumber) {
//     print("не угадал. она больше числа $number");
//   }
//   else {
//     print("не угадал. она меньше числа $number");
//   }
//   number = int.parse(stdin.readLineSync()!);
// }
// print('ты угадал число $randomnumber');

  int number = int.parse(stdin.readLineSync()!);
  print(func(number));
}

String func(int n) {
  int l = n.toString().length;
  List d = n.toString().split('');
  int sum = 0;
  for (var i = 0; i < l; i++) {
    sum += pow(int.parse(d[i]), i+1).toInt();
  }
  return n == sum ? "yes" : "no";
}
