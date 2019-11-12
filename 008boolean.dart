main() {
  Boolean obj = Boolean();
  obj.bool1();
}

class Boolean {
  void bool1() {
    bool test;
    test = 12 > 5;
    print(test);

    var str = 'abc';
    if (str.isNotEmpty) {
      print('String is not empty');
    } else {
      print('Empty String');
    }
  }
}
