import "dart:async";
import "dart:io";

void main() {
  files();
  readLine();
}

files() {
  print("read file : ");
  //File file = new File( Directory.current.path+"\\data\\024contacts.txt");
  File file = new File(Directory.current.path + "\\024contacts.txt");
  Future<String> f = file.readAsString();

  // returns a futrue, this is Async method
  f.then((data) => print(data));

  // once file is read , call back method is invoked
  print("End of main");
  // this get printed first, showing fileReading is non blocking or async
}

readLine() {
  print("read Line : ");
  print("Enter your name :");

  // prompt for user input
  String name = stdin.readLineSync();

  // this is a synchronous method that reads user input
  print("Hello Mr. ${name}");
  print("End of main");
}
