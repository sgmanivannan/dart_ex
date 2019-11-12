main() {
  Numbers obj = Numbers();
  obj.numbers1();
  obj.parsing1();
  //obj.parsing2();
  obj.properties1();
  obj.properties1();
  obj.numberMethods();
}

class Numbers {
  void numbers1() {
    print("numbers 1");
    int num1 = 10;

    // declare an integer
    double num2 = 10.50;

    // declare a double value
    print(num1);
    print(num2);
  }

  void parsing1() {
    print("parsing 1");
    print(num.parse('12'));
    print(num.parse('10.91'));
  }

  void parsing2() {
    print("parsing 2");
    print(num.parse('12A'));
    print(num.parse('AAAA'));
  }

  void properties1() {
    print("properties........");
    int n = 5000;
    double p = 50.5;
    print("(n.hashCode :  ${n.hashCode}");

    print("n.isFinite : ${n.isFinite}");

    print("n.isInfinite : ${n.isInfinite}");

    print("n.isNan ${n.isNaN} _____ p.isNan : ${p.isNaN} ");

    int posNum = 10;
    int negNum = -10;

    print("posNum.isNegative : ${posNum.isNegative}");
    print("negNum.isNegative : ${negNum.isNegative}");

    int valZero = 0;

    print("posNum.sign : ${posNum.sign}");
    print("negNum.sign : ${negNum.sign}");
    print("valZero.sign : ${valZero.sign}");

    print("posNum.isOdd : ${posNum.isOdd}");

    print("posNum.isEven : ${posNum.isEven}");
  }

  void numberMethods() {
    print("number methods");

    double a = -2;
    print(a.abs());

    a = 2.4;
    print("The ceiling value of 2.4 = ${a.ceil()}");

    print(a.compareTo(12));
    print(a.compareTo(2.4));
    print(a.compareTo(0));

    a = 2.9;
    print("The floor value of 2.9 = ${a.floor()}");

    a = 10;
    double b = 17;

    print(a.remainder(2));
    print(b.remainder(2));

    double n1 = 12.023;
    double n2 = 12.89;

    var value = n1.round();
    print(value);

    value = n2.round();
    print(value);

    int n3 = 2;
    print("Output = ${n3.toDouble()}");

    n1 = 2.0;
    value = n1.toInt();
    print("Output = ${value}");

    n1 = 2;
    String value4 = n1.toString();
    print(value4 is String);

    n1 = 2.123;
    value = n1.truncate();
    print("The truncated value of 2.123 = ${value}");
  }
}
