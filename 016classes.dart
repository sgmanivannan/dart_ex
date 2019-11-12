void main() {
  //Accessing Attributes and Functions
  print("Accessing Attributes and Functions : ");
  Car c = new Car();
  c.disp();

//Dart Constructors
  print("Dart Constructors : ");
  Car1 c1 = new Car1('E1001');

//Named Constructors
  print("Named Constructors : ");
  Car2 c2a = new Car2.namedConst('E1001');
  Car2 c2b = new Car2();

  //this Keyword
  print("this Keyword : ");
  Car3 c3 = new Car3('E1001');

  //Getters and Setters
  print("Getters and Setters : ");
  Student s1 = new Student();
  s1.stud_name = 'MARK';
  s1.stud_age = 0;
  print(s1.stud_name);
  print(s1.stud_age);

  var obj;
  //Class Inheritance
  print("Class Inheritance : ");
  obj = new Circle();
  obj.cal_area();

  //multi-level inheritance
  print("multi-level inheritance : ");
  obj = new Leaf();
  obj.str = "hello";
  print(obj.str);

  // Dart – Class Inheritance and Method Overriding
  print("Dart – Class Inheritance and Method Overriding : ");
  Child1 child1 = new Child1();
  child1.m1(12);

  // static Keyword
  print("static Keyword : ");
  StaticMem.num = 12;
  // initialize the static variable
  StaticMem.disp();
  // invoke the static method

  //super Keyword
  print("super Keyword : ");
  Child2 child2 = new Child2();
  child2.m1(12);
}

//1 Accessing Attributes and Functions
class Car {
  // field
  String engine = "E1001";

  // function
  void disp() {
    print(engine);
  }
}
// 1 END

//2 Dart Constructors
class Car1 {
  Car1(String engine) {
    print(engine);
  }
}
//2 END

//3 Named Constructors
// Class_name.constructor_name(param_list)
class Car2 {
  Car2() {
    print("Non-parameterized constructor invoked");
  }
  Car2.namedConst(String engine) {
    print("The engine is : ${engine}");
  }
}
//3 END

//4 this Keyword
class Car3 {
  String engine;
  Car3(String engine) {
    this.engine = engine;
    print("The engine is : ${engine}");
  }
}
//4 END

//5 Getters and Setters
class Student {
  String name;
  int age;

  String get stud_name {
    return name;
  }

  void set stud_name(String name) {
    this.name = name;
  }

  void set stud_age(int age) {
    if (age <= 0) {
      print("Age should be greater than 5");
    } else {
      this.age = age;
    }
  }

  int get stud_age {
    return age;
  }
}
//5 END

//6 Class Inheritance
// class child_class_name extends parent_class_name
/*
Dart supports the concept of Inheritance which is the ability of a program to create new classes from an existing class.
The class that is extended to create newer classes is called the parent class/super class.
The newly created classes are called the child/sub classes.

A class inherits from another class using the ‘extends’ keyword.
Child classes inherit all properties and methods except constructors from the parent class.
*/
class Shape {
  void cal_area() {
    print("calling calc area defined in the Shape class");
  }
}

class Circle extends Shape {}
//6 END

/*
Types of Inheritance
Inheritance can be of the following three types −

1) Single − Every class can at the most extend from one parent class.

2) Multiple − A class can inherit from multiple classes. Dart doesn’t support multiple inheritance.

3) Multi-level − A class can inherit from another child class.
*/

//7 multi-level inheritance
class Root {
  String str;
}

class Child extends Root {}

class Leaf extends Child {}
//indirectly inherits from Root by virtue of inheritance
//7 END

//8 Dart – Class Inheritance and Method Overriding
class Parent1 {
  void m1(int a) {
    print("value of a ${a}");
  }
}

class Child1 extends Parent1 {
  @override
  void m1(int b) {
    print("value of b ${b}");
  }
}
//8 END

//9 static Keyword
class StaticMem {
  static int num;
  static disp() {
    print("The value of num is ${StaticMem.num}");
  }
}
//9 END

// 10 super Keyword
class Parent2 {
  String msg = "message variable from the parent class";
  void m1(int a) {
    print("value of a ${a}");
  }
}

class Child2 extends Parent2 {
  @override
  void m1(int b) {
    print("value of b ${b}");
    super.m1(13);
    print("${super.msg}");
  }
}
//10 END
