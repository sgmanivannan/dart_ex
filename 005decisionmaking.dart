main() {
  DecisionMaking obj = DecisionMaking();
  obj.if1();
  obj.ifElse();
  obj.elseIfLadder();
  obj.switch1();
}

class DecisionMaking {
  void if1() {
    print("IF");
    var num = 5;
    if (num > 0) {
      print("number is positive");
    }
  }

  void ifElse() {
    print("IF ELSE");
    var num = 12;
    if (num % 2 == 0) {
      print("Even");
    } else {
      print("Odd");
    }
  }

  void elseIfLadder() {
    print("else If Ladder");
    var num = 2;
    if (num > 0) {
      print("${num} is positive");
    } else if (num < 0) {
      print("${num} is negative");
    } else {
      print("${num} is neither positive nor negative");
    }
  }

  void switch1() {
    print("SWITCH");
    var grade = "A";
    switch (grade) {
      case "A":
        {
          print("Excellent");
        }
        break;

      case "B":
        {
          print("Good");
        }
        break;

      case "C":
        {
          print("Fair");
        }
        break;

      case "D":
        {
          print("Poor");
        }
        break;

      default:
        {
          print("Invalid choice");
        }
        break;
    }
  }
}
