import 'dart:io';
void main() {
  // Prompt the user for input

print('Enter a number: ');

  // Read the input as a string
  String input = stdin.readLineSync()!;

  // Convert the input string to an integer
  int number = int.tryParse(input) ?? 0;

  // Check if conditions are met and print the corresponding message
  if (number > 10) {
    print('Your number is greater than 10');
  } else if (number < 10) {
    print('Your number is less than 10');
  } else {
    print('Your number is equal to 10');
  }
  }