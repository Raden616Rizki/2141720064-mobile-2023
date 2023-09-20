void main() {
  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  // var names3 = {}; // Creates a map, not a set.

  names1.add('2141720064');
  names2.add('Raden Rizki');

  names2.addAll(names1);

  print(names1);
  print(names2);
  // print(names3);

  // var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  // print(halogens);
}
