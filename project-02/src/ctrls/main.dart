import '../mds/classes.dart';
import '../tls/enums.dart';

void main() {
  var people = <Person>[
    Person('Person 1', Genre.M, 18, 1000),
    Person('Person 2', Genre.F, 19, 1100),
    Person('Person 3', Genre.M, 24, 1900),
    Person('Person 4', Genre.F, 28, 2300),
    Person('Person 5', Genre.F, 29, 2400),
    Person('Person 6', Genre.M, 31, 3000),
    Person('Person 7', Genre.M, 32, 3100),
    Person('Person 8', Genre.F, 46, 3200),
    Person('Person 9', Genre.M, 48, 3500),
    Person('Person 10', Genre.F, 52, 4800),
  ];

  print('\nList the entire registration: ');

  people.forEach((p) => print(p));

  print('\nInform if there are any women, any men, only women or only men: ');

  var qt_women = 0, qt_men = 0;

  people.forEach((p) => p.genre == Genre.F ? qt_women++ : qt_men++);

  if (qt_women > 0 && qt_men > 0) {
    print('There are both women and men!');
  } else if (qt_women > 0) {
    print('There are only women!');
  } else if (qt_men > 0) {
    print('There are only men!');
  }

  print('\nInform the average age for women, the average age for men: ');

  var women_age_sum = 0, men_age_sum = 0;

  people.forEach(
    (p) => p.genre == Genre.F
    ? women_age_sum += p.age
    : men_age_sum += p.age
  );

  var women_age_average = women_age_sum/qt_women;
  var men_age_average = men_age_sum/qt_men;

  if (qt_women != 0) {
    print('Women average = $women_age_average years old');
  }

  if (qt_men != 0) {
    print('Men average = $men_age_average years old');
  }

  print('\nWho has the highest salary, whether male or female: ');

  var women_salary_sum = 0.0, men_salary_sum = 0.0;

  people.forEach((p) =>
    (p) => p.genre == Genre.F
    ? women_salary_sum += p.salary
    : men_salary_sum += p.salary
  );

  var women_salary_average = women_salary_sum/qt_women;
  var men_salary_average = men_salary_sum/qt_men;

  print('The person who has the highest salary is: '
    "${women_salary_average > men_salary_average ? 'woman' : 'man'}"
  );

  print('\nRemove all women who are below average women: ');

  people.removeWhere((p) => p.genre == Genre.F && p.age < women_age_average);

  people.forEach((p) => print(p));

  print('\nRemove all men are above the male average: ');

  people.removeWhere((p) => p.genre == Genre.M && p.age > women_age_average);

  people.forEach((p) => print(p));
}
