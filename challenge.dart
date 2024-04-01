import 'dart:io';

// Interface for reading data from a file
abstract class FileReader {
  void readFromFile(String filename);
}

// Class implementing the FileReader interface
class DataReader implements FileReader {
  List<String> data = [];

  @override
  void readFromFile(String filename) {
    try {
      File file = File(filename);
      data = file.readAsLinesSync();
    } catch (e) {
      print("Error reading file: $e");
    }
  }
}

// Base class with a method that will be overridden
class MyBaseClass {
  void overrideMe() {
    print("This method should be overridden in a subclass.");
  }
}

// Subclass that overrides the method from MyBaseClass
class MySubClass extends MyBaseClass {
  @override
  void overrideMe() {
    print("Method overridden in MySubClass.");
  }
}

void main() {
  // Creating an instance of DataReader and reading data from a file
  DataReader reader = DataReader();
  reader.readFromFile("data.txt");

  // Printing the data read from the file
  print("Data from file:");
  reader.data.forEach((line) => print(line));

  // Creating an instance of MySubClass and calling the overridden method
  MySubClass subClass = MySubClass();
  subClass.overrideMe();

  // Method demonstrating the use of a loop
  print("\nDemonstrating loop:");
  for (int i = 1; i <= 5; i++) {
    print("Iteration $i");
  }
}
