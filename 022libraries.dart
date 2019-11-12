import '022librarieslogger.dart';
import '022librariesweblogger.dart' as web;

main() {
  log("hi");
  web.log("Wrold");
}

/*
Library Prefix:
If you import two libraries with conflicting identifiers, then you can specify a prefix for one or both libraries.
Use the 'as' keyword for specifying the prefix. The syntax for the same is given below −
*/
