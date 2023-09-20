void main() {
  // var list = [1, 2, 3];
  // var list2 = [0, ...list];
  // print(list);
  // print(list2);
  // print(list2.length);

  var list1 = [1, 2, null];
  // print(list1);
  var list3 = [0, ...list1];
  // print(list3.length);

  var nim = ['2141720064', ...list3];
  print(nim);

  var promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  var login = 'Operator';
  var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login case 'Manager') 'Inventory'
  ];
  print(nav2);

  // var listOfInts = [1, 2, 3];
  // var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  var listOfStrings = ['#0', for (var i = 1; i < 10; i++) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}
