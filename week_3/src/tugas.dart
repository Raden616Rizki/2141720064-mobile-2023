void main() {
  for (int i = 0; i <= 201; i++) {
    if (i == 0 || i == 1) continue;
    else if (i % 2 == 0 && i != 2) continue;
    else if (i % 3 == 0 && i != 3) continue;
    else if (i % 5 == 0 && i != 5) continue;
    else if (i % 7 == 0 && i != 7) continue;
    else if (i % 11 == 0 && i != 11) continue;
    else if (i % 13 == 0 && i != 13) continue;

    print('| $i | Raden Rizki | 2141720064 |');
  }
}
