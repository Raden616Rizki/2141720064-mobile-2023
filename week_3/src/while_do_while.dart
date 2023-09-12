import 'dart:io';

void main() {
  int counter = 0;

  while (counter < 33) {
    stdout.write('$counter, ');
    counter++;
  }

  print('\n');

  counter = 0;

  do {
    stdout.write('$counter, ');
    counter++;
  } while (counter < 77);
}
