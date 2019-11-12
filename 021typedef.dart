void main() {
  //1
  print("TypeDef example 1:");
  ManyOperation oper = Add;
  oper(10, 20);
  oper = Subtract;
  oper(30, 20);
  oper = Divide;
  oper(50, 5);

  //2
  print("TypeDef example 2:");
  Calculator(5, 5, Add);
  Calculator(5, 5, Subtract);
  Calculator(5, 5, Divide);
}

typedef ManyOperation(int firstNo, int secondNo);//function signature

Add(int firstNo, int second) {
  print("Add result is ${firstNo + second}");
}

void Subtract(int firstNo, int second) {
  print("Subtract result is ${firstNo - second}");
}

Divide(int firstNo, int second) {
  print("Divide result is ${firstNo / second}");
}

Calculator(int a, int b, ManyOperation oper) {
  print("Inside calculator");
  oper(a, b);
}
