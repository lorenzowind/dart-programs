import '../tls/enums.dart';

class Person {
  // ----- Attributes ----------------------------------------------------------
  late String _name;
  late Genre _genre;
  late int _age;
  late double _salary;

  // ----- Constructors --------------------------------------------------------

  Person(this._name, this._genre, this._age, this._salary);

  // ----- Getters and setters -------------------------------------------------

  String get name => _name;

  Genre get genre => _genre;

  int get age => _age;

  double get salary => _salary;

  set setName(String name) => _name = name;

  set setGenre(Genre genre) => _genre = genre;

  set setAge(int age) => _age = age;

  set setSalary(double salary) => _salary = salary;

  // ----- Methods -------------------------------------------------------------

  @override
  String toString() {
    return 'Person ['
      'name = $name, '
      'genre = $genre , '
      'age = $age, '
      'salary = $salary'
    ']';
  }
}