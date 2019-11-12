import 'dart:io';

void main() {
  ConsolePrinter cp = new ConsolePrinter();
  cp.print_data();

  print("");
  stdout.write("#" * 40);
  print("\n");

  Calculator c = new Calculator();
  print("The gross total : ${c.ret_tot()}");
  print("Discount :${c.ret_dis()}");
}

//1
class Printer {
  void print_data() {
    print("__________Printing Data__________");
  }
}

class ConsolePrinter implements Printer {
  void print_data() {
    print("__________Printing to Console__________");
  }
}
//1 END

//2
class Calculate_Total {
  int ret_tot() {}
}

class Calculate_Discount {
  int ret_dis() {}
}

class Calculator implements Calculate_Total, Calculate_Discount {
  int ret_tot() {
    return 1000;
  }

  int ret_dis() {
    return 50;
  }
}
//2 END
