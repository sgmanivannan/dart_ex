main() {
  RunesEx o = RunesEx();
  o.f1();
}

/*
Strings are a sequence of characters. Dart represents strings as a sequence of Unicode UTF-16 code units.
Unicode is a format that defines a unique numeric value for each letter, digit, and symbol.

Since a Dart string is a sequence of UTF-16 code units, 32-bit Unicode values within a string are represented using a special syntax.
A rune is an integer representing a Unicode code point.

The String class in the dart:core library provides mechanisms to access runes.
String code units / runes can be accessed in three ways −

Using String.codeUnitAt() function
Using String.codeUnits property
Using String.runes property
*/

class RunesEx {
  String x = 'Runes';
  f1() {
    print("codeUnitAt(0) : ");
    print(x.codeUnitAt(0));

    print("x.codeUnits : ");
    print(x.codeUnits);

    print("String.runes Property : ");
    "A string".runes.forEach((int rune) {
      var character = new String.fromCharCode(rune);
      print(character);
    });

/*
Unicode code points are usually expressed as \uXXXX, where XXXX is a 4-digit hexadecimal value.
To specify more or less than 4 hex digits, place the value in curly brackets.
One can use the constructor of the Runes class in the dart:core library for the same.
*/
    print("Unicode : ");
    Runes input = new Runes(' \u{1f605} ');
    print(new String.fromCharCodes(input));
  }
}
