import 'dart:io';

void main() {
  for (int index = 10; index < 27; index++) {
    // stdout.write('$index ');
    if (index == 21) break;
    else if (index > 11 && index < 17) continue;
    stdout.write('$index ');
  }
}
