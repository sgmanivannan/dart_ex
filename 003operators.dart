main() {
  Operators obj = Operators();

  obj.arithmetic();

  obj.typeTest();

  obj.relational();

  obj.assignment();

  obj.logical();

  obj.conditional();
}

class Operators {
  void arithmetic() {
    print('Arithmetic Operator :');
    var num1 = 101;
    var num2 = 2;
    var res = 0;

    res = num1 + num2;
    print("Addition: ${res}");

    res = num1 - num2;
    print("Subtraction: ${res}");

    res = num1 * num2;
    print("Multiplication: ${res}");

    //res = num1 / num2;
    print("Division: ${num1 / num2}");

    res = num1 ~/ num2;
    print("Division returning Integer: ${res}");

    res = num1 % num2;
    print("Remainder: ${res}");

    num1++;
    print("Increment: ${num1}");

    num2--;
    print("Decrement: ${num2}");
  }

  void typeTest() {
    print('Type Test : ');
    int a = 2;
    print(a is int);

    double b = 2.20;
    var num = b is! int;
    print(num);
  }

  void relational() {
    print('Relational operator : ');
    var num1 = 5;
    var num2 = 9;
    var res = num1 > num2;
    print('num1 greater than num2 ::  ' + res.toString());

    res = num1 < num2;
    print('num1 lesser than  num2 ::  ' + res.toString());

    res = num1 >= num2;
    print('num1 greater than or equal to num2 ::  ' + res.toString());

    res = num1 <= num2;
    print('num1 lesser than or equal to num2  ::  ' + res.toString());

    res = num1 != num2;
    print('num1 not equal to num2 ::  ' + res.toString());

    res = num1 == num2;
    print('num1 equal to num2 ::  ' + res.toString());
  }

  void assignment() {
    print('Assignment Operator : ');
    double a = 12;
    double b = 3;

    a += b;
    print("a+=b : ${a}");

    a = 12;
    b = 13;
    a -= b;
    print("a-=b : ${a}");

    a = 12;
    b = 13;
    a *= b;
    print("a*=b : ${a}");

    a = 12;
    b = 13;
    a /= a;
    print("a/=b : ${a}");

    a = 12;
    b = 13;
    a %= b;
    print("a%=b : ${a}");
  }

  void logical() {
    print('Logical Operator : ');
    var a = 10;
    var b = 12;

    var res = (a < b) && (b > 10);
    print(res);

    res = (a > b) || (b < 10);
    print(res);

    res = !(a == b);
    print(res);

    //Short-circuit Operators (&& and ||)
    res = (a < 10 && a > 5);
    print(res);
    res = (a > 5 || a < 10);
    print(res);
  }

  void conditional() {
    print('Conditional Operator : ');
    var a = 10, b = 12;
    var res = a > 12 ? "value greater than 10" : "value lesser than or equal to 10";
    print(res);

    //expr1 ?? expr2
    //If expr1 is non-null, returns its value; otherwise, evaluates and returns the value of expr2
    a = null;
    var res1 = a ?? b;
    print(res1);
  }
}
