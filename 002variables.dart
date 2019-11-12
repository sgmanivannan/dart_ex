main() {
  Variables obj = Variables();

  obj.variables1();

  print(obj.variables2());

  obj.dynamic1();

  obj.final1();

  obj.const1();
}

class Variables {
  /*may contain void or return */
  //void
  variables1() {
    int value = 10;
    print(value);
  }

  //return
  variables2() {
    return 101;
  }

  //Variables declared without a static type are implicitly declared as dynamic.
  //Variables can be also declared using the dynamic keyword in place of the var keyword.
  dynamic1() {
    dynamic x = 100;
    print(x);
  }

  //The final and const keyword are used to declare constants.
  //Dart prevents modifying the values of a variable declared using the final or const keyword.
  //These keywords can be used in conjunction with the variable’s data type or instead of the var keyword.
  final1() {
    final a = "asdfg";
    final int b = 1000;
    print('${a} ${b}');
  }

//The const keyword is used to represent a compile-time constant.
//Variables declared using the const keyword are implicitly final.
  const1() {
    const pi = 3.14;
    const double area = pi * 12 * 12;
    print("The output is ${area}");
  }
}
