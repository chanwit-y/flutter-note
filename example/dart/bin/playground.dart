// import 'package:playground/ex_final.dart';
// import 'package:playground/ex_late.dart';
// import 'package:playground/playground.dart' as playground;

// void main(List<String> arguments) {
//   var exampleLate = ExampleLate();

//   testFinal();
//   print('Hello world: ${playground.calculate()}!');
// }

import 'dart:io';

import 'package:playground/lab.dart';

void main(List<String> arguments) {
  var inputBank1000 = getBankValue('1000');
  var inputBank500 = getBankValue('500');
  var inputBank100 = getBankValue('100');

  var atm = ATM(
    bank1000: inputBank1000,
    bank500: inputBank500,
    bank100: inputBank100,
  );

  while (true) {
    print('ATM balance: ${atm.total}');
    stdout.write('Enter amount: ');
    var input = stdin.readLineSync();

    if (input == null || int.tryParse(input) == null) {
      print('Amount must be integer');
    } else {
      var amount = int.parse(input);
      try {
        atm.withdraw(amount);
        print('Withdraw $amount success');
        // print('ATM balance: ${atm.total}');
        print('Bank 1000: ${atm.bank1000}');
        print('Bank 500: ${atm.bank500}');
        print('Bank 100: ${atm.bank100}');
      } on Exception catch (e) {
        print(e);
      }
    }
    print('-------------------------------');
  }
}

int getBankValue(String bankName) {
  while (true) {
    stdout.write('Enter $bankName bank: ');
    var input = stdin.readLineSync();

    if (input == null || int.tryParse(input) == null) {
      print('Bank $bankName must be integer');
    } else {
      return int.parse(input);
    }
  }
}
