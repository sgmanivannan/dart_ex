main() {
  Exceptions o = Exceptions();
  o.onBlock();
  o.catchBlock();
  o.onCatchBlock();
  o.finallyBlock();
  o.throwingAnException();
  o.customException();
}

/*
try { 
   // code that might throw an exception 
}  
on Exception1 { 
   // code for handling exception 
}  
catch Exception2 { 
   // code for handling exception 
} 
*/

/*
try { 
   // code that might throw an exception 
}  
on Exception1 { 
   // exception handling code 
}  
catch Exception2 { 
   //  exception handling 
}  
finally { 
   // code that should always execute; irrespective of the exception 
}
*/

class Exceptions {
  onBlock() {
    print("On Block : ");
    int x = 12;
    int y = 0;
    int res;

    try {
      res = x ~/ y;
    } on IntegerDivisionByZeroException {
      print('Cannot divide by zero');
    }
  }

  catchBlock() {
    print("Catch Block : ");
    int x = 12;
    int y = 0;
    int res;

    try {
      res = x ~/ y;
    } catch (e) {
      print(e);
    }
  }

  onCatchBlock() {
    print("On Catch Block : ");
    int x = 12;
    int y = 0;
    int res;

    try {
      res = x ~/ y;
    } on IntegerDivisionByZeroException catch (e) {
      print(e);
    }
  }

  finallyBlock() {
    print("Finally Block : ");
    int x = 12;
    int y = 0;
    int res;

    try {
      res = x ~/ y;
    } on IntegerDivisionByZeroException {
      print('Cannot divide by zero');
    } finally {
      print('Finally block executed');
    }
  }

///////////////////////////////////
  throwingAnException() {
    print("Throwing An Exception");
    try {
      test_age(-2);
    } catch (e) {
      print('Age cannot be negative');
    }
  }

  void test_age(int age) {
    if (age < 0) {
      throw new FormatException();
    }
  }

///////////////////////////////////
  customException() {
    print("Custom Exception : ");
    try {
      withdraw_amt(-1);
    } catch (e) {
      print(e.errMsg());
    } finally {
      print('Ending requested operation.....');
    }
  }

  void withdraw_amt(int amt) {
    if (amt <= 0) {
      throw new AmtException();
    }
  }
  ///////////////////////////////////
}

class AmtException implements Exception {
  String errMsg() => 'Amount should be greater than zero';
}
