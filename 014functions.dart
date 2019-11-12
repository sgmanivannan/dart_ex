main() {
  //calling a function
  print("calling a function : ");
  function_name();
  function_name1();

  //Returning Function
  print("Returning Function : ");
  print(test());

  //Parameterized Function
  print("Parameterized Function : ");
  test_param(123, "this is a string");

  //Optional Positional Parameter
  print("Optional Positional Parameter : ");
  test_param1(123);

  //Optional Named Parameter
  print("Optional Named Parameter : ");
  test_param2(123);
  test_param2(123, s1: 'hello');
  test_param2(123, s2: 'hello', s1: 'world');

  //Optional Parameters with Default
  print("Optional Parameters with Default  : ");
  test_param3(123);

  //Lambda Functions
  print("Lambda Functions : ");
  printMsg();
  print(test2());
}

//1
function_name() {
  //statements
  print("fun1");
}

//OR
void function_name1() {
  //statements
  print("fun2");
}
//1 END

//2
String test() {
  // function definition
  return "Hi world";
}
//2 END

//3
test_param(int n1, String s1) {
  print(n1);
  print(s1);
}
//3 END

//4 Optional Positional Parameter
// void function_name(param1, [optional_param_1, optional_param_2]) { }
test_param1(n1, [s1]) {
  print(n1);
  print(s1);
}
//4 END

//5 Optional Named Parameter
// void function_name(a, {optional_param1, optional_param2}) { }
// calling function -> function_name(optional_param:value,…);
test_param2(n1, {s1, s2}) {
  print(n1);
  print(s1);
}
//5 END

//6 Optional Parameters with Default Values
//function_name(param1,{param2= default_value}) {   //...... }
void test_param3(n1, {s1: 12}) {
  print(n1);
  print(s1);
}
//6 END

//7 Lambda Functions
//Lambda functions are a concise mechanism to represent functions. These functions are also called as Arrow functions.
printMsg() => print("hello");
int test2() => 123;
//7 END
