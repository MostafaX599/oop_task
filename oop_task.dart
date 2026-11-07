
class Person {
  String name;
  int age;


  Person()
      : name = "Unknown",
        age = 0;


  Person.details(this.name, this.age);


  Person.guest()
      : name = "student",
        age = 18;
}

class Student extends Person {
  int _grade;


  Student(String name, int age, this._grade)
      : super.details(name, age);


  int get grade => _grade;

  // Setter
  set grade(int value) {
    if (value >= 0 && value <= 100) {
      _grade = value;
    }
  }

  void displayInfo() {
    print("Student Name: $name");
    print("Student Age: $age");
    print("Student Grade: $_grade");
  }
}

void main() {
  Student student1 = Student("Mostafa", 21, 90);

  student1.displayInfo();

  student1.grade = 95;

  print("\nAfter updating grade:");
  student1.displayInfo();
}
