void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  gifts['nim'] = '2141720064';
  gifts['nama'] = 'Raden Rizki';

  nobleGases[1] = '2141720064';
  nobleGases[3] = 'Raden Rizki';

  mhs1['nim'] = '2141720064';
  mhs1['nama'] = 'Raden Rizki';

  mhs2[1] = '2141720064';
  mhs2[3] = 'Raden Rizki';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}

