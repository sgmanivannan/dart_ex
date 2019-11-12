import 'dart:io';

main() {
  Strings obj = Strings();
  obj.strings1();
  obj.strings2();
  obj.strings3();
  obj.properties();
  obj.stringMethods();
}

class Strings {
  void strings1() {
    print("strings 1");
    String str1 = 'this is a single line string';
    String str2 = "this is a single line string";
    String str3 = '''this is a multiline line string''';
    String str4 = """this is a multiline line string""";

    print(str1);
    print(str2);
    print(str3);
    print(str4);
  }

  void strings2() {
    print("strings 2");
    String str1 = "hello";
    String str2 = "world";
    String res = str1 + str2;

    print("The concatenated string : ${res}");

    stdout.write('*');

    stderr.write("Message");

    print('*' * 50);
  }

  void strings3() {
    print("strings 3");
    int n = 1 + 1;

    String str1 = "The sum of 1 and 1 is ${n}";
    print(str1);

    String str2 = "The sum of 2 and 2 is ${2 + 2}";
    print(str2);
  }

  void properties() {
    print("properties");

    String str = "Hello";
    print(str.codeUnits);

    print(str.isEmpty);

    str = "Hello All";
    print("The length of the string is: ${str.length}");
  }

  void stringMethods() {
    print("strign methods");
    String uStr = "ABC";
    String lStr = "hello";
    print("lower case");
    print(uStr.toLowerCase());
    print(lStr.toLowerCase());

    print("upper case");
    print(uStr.toUpperCase());
    print(lStr.toUpperCase());

    print('trim');
    String str1 = "h el lo";
    String str2 = "hello      world     ";
    String str3 = "       hello";

    print(str1.trim());
    print(str2.trim());
    print(str3.trim());

    print("compareTo");

    str1 = "A";
    str2 = "A";
    str3 = "B";

    print("str1.compareTo(str2): ${str1.compareTo(str2)}");
    print("str1.compareTo(str3): ${str1.compareTo(str3)}");
    print("str3.compareTo(str2): ${str3.compareTo(str2)}");

    print("replaceAll");
    str1 = "Hello World";
    print("New String: ${str1.replaceAll('World', 'ALL')}");

    print("split");
    str1 = "Today, is, Thursday";
    print("New String: ${str1.split(',')}");

    print("sub string");
    str1 = "Hello World";
    // from index 6 to the last index
    print("New String: ${str1.substring(6)}");
    // from index 2 to the 6th index
    print("New String: ${str1.substring(2, 6)}");

    print("toString");
    int n = 12;
    var res = n.toString();
    print("New String: ${res}");

    print("codeUnitAt");
    res = "Good Day";
    print("Code Unit of index 0 (G): ${res.codeUnitAt(0)}");
  }
}
