import 'dart:core';
import 'dart:mirrors';
import '011symbolsfoo.dart';

/*
Symbols in Dart are opaque, dynamic string name used in reflecting out metadata from a library.
Simply put, symbols are a way to store the relationship between a human readable string and a string that is optimized to be used by computers.

Reflection is a mechanism to get metadata of a type at runtime like the number of methods in a class, 
the number of constructors it has or the number of parameters in a function. You can even invoke a method of the type which is loaded at runtime.

In Dart reflection specific classes are available in the dart:mirrors package.
This library works in both web applications and command line applications.
*/

main() {
  SymbolsEx obj = SymbolsEx();

  Symbol lib = new Symbol("foo_lib");
  //library name stored as Symbol

  Symbol clsToSearch = new Symbol("Foo");
  // class name stored as Symbol

  if (obj.checkIf_classAvailableInlibrary(lib, clsToSearch)) {
    // searches Foo class in foo_lib library
    print("class found..");
  }

  obj.reflect_InstanceMethods(lib, clsToSearch);

  obj.convertSymbolToString();
}

class SymbolsEx {
  bool checkIf_classAvailableInlibrary(Symbol libraryName, Symbol className) {
    print("checkIf_classAvailableInlibrary: ".toUpperCase());
    MirrorSystem mirrorSystem = currentMirrorSystem();
    LibraryMirror libMirror = mirrorSystem.findLibrary(libraryName);

    if (libMirror != null) {
      print("Found Library");
      print("checkng...class details..");
      print("No of classes found is : ${libMirror.declarations.length}");
      libMirror.declarations.forEach((s, d) => print(s));

      if (libMirror.declarations.containsKey(className)) return true;
      return false;
    }
  }

  void reflect_InstanceMethods(Symbol libraryName, Symbol className) {
    print("reflect_InstanceMethods : ".toUpperCase());
    MirrorSystem mirrorSystem = currentMirrorSystem();
    LibraryMirror libMirror = mirrorSystem.findLibrary(libraryName);

    if (libMirror != null) {
      print("Found Library");
      print("checkng...class details..");
      print("No of classes found is : ${libMirror.declarations.length}");
      libMirror.declarations.forEach((s, d) => print(s));

      if (libMirror.declarations.containsKey(className)) print("found class");
      ClassMirror classMirror = libMirror.declarations[className];

      print(
          "No of instance methods found is ${classMirror.instanceMembers.length}");
      classMirror.instanceMembers.forEach((s, v) => print(s));
    }
  }

  void convertSymbolToString() {
    print("convertSymbolToString : ".toUpperCase());
    Symbol lib = new Symbol("foo_lib");
    String name_of_lib = MirrorSystem.getName(lib);

    print(lib);
    print(name_of_lib);
  }
}
