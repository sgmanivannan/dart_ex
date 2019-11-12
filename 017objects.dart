void main() {
  // creating and using an object
  print("creating and using an object : ");
  Student s1 = new Student();
  s1.test_method();
  s1.test_method1();

  //The Cascade operator (..)
  print("The Cascade operator (..)");
  new Student()
    ..test_method()
    ..test_method1();

//toString()
  print("toString() : ");
  int n = 12;
  print(n.toString());
}

/*
Object-Oriented Programming defines an object as “any entity that has a defined boundary.” An object has the following −

State − Describes the object. The fields of a class represent the object’s state.

Behavior − Describes what an object can do.

Identity − A unique value that distinguishes an object from a set of similar other objects.
Two or more objects can share the state and behavior but not the identity.

The period operator (.) is used in conjunction with the object to access a class’ data members.
*/

/*
The Cascade operator (..)
The above example invokes the methods in the class. However, every time a function is called,
a reference to the object is required. The cascade operator can be used as a shorthand in cases where there is a sequence of invocations.

The cascade ( .. ) operator can be used to issue a sequence of calls via an object.
The above example can be rewritten in the following manner.
*/

class Student {
  void test_method() {
    print("This is a  test method");
  }

  void test_method1() {
    print("This is a  test method1");
  }
}
