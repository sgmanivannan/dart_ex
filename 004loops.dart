main() {
  Loops obj = Loops();
  obj.for1();
  obj.for2();
  obj.forIn();
  obj.while1();
  obj.doWhile();
  obj.break1();
  obj.continue1();
  obj.label1();
  obj.label2();
}

class Loops {
  void for1() {
    print("for 1");
    var num = 5;
    var factorial = 1;

    for (var i = num; i >= 1; i--) {
      factorial *= i;
    }
    print(factorial);
  }

  void for2() {
    print("FOR 2");
    for (var temp, i = 0, j = 1; j < 30; temp = i, i = j, j = i + temp) {
      print('${j}');
    }
  }

  void forIn() {
    print("for in");
    var obj = [12, 13, 14];

    for (var prop in obj) {
      print(prop);
    }
  }

  void while1() {
    print("while 1");
    var num = 5;
    var factorial = 1;

    while (num >= 1) {
      factorial = factorial * num;
      num--;
    }
    print("The factorial  is ${factorial}");
  }

  void doWhile() {
    print("do while");
    var n = 10;
    do {
      print(n);
      n--;
    } while (n >= 0);
  }

  void break1() {
    print("break 1");
    var i = 1;
    while (i <= 10) {
      if (i % 5 == 0) {
        print("The first multiple of 5  between 1 and 10 is : ${i}");
        break;
        //exit the loop if the first multiple is found
      }
      i++;
    }
  }

  void continue1() {
    print("continue 1");
    var num = 0;
    var count = 0;

    for (num = 0; num <= 20; num++) {
      if (num % 2 == 0) {
        continue;
      }
      count++;
    }
    print(" The count of odd values between 0 and 20 is: ${count}");
  }

  void label1() {
    print("label1");
    outerloop: // This is the label name

    for (var i = 0; i < 5; i++) {
      print("Innerloop: ${i}");
      innerloop:
      for (var j = 0; j < 5; j++) {
        if (j > 3) break;

        // Quit the innermost loop
        if (i == 2) break innerloop;

        // Do the same thing
        if (i == 4) break outerloop;

        // Quit the outer loop
        print("Innerloop: ${j}");
      }
    }
  }

  void label2() {
    print("label 2");
    outerloop: // This is the label name

    for (var i = 0; i < 3; i++) {
      print("Outerloop:${i}");

      for (var j = 0; j < 5; j++) {
        if (j == 3) {
          continue outerloop;
        }
        print("Innerloop:${j}");
      }
    }
  }
}
