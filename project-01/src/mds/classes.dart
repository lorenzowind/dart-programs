import '../tls/constants.dart';
import 'mixins.dart';

abstract class Vehicle {
  // ----- Attributes ----------------------------------------------------------

  double _mileage; // distance traveled in kilometers
  double _fuel_tank; // fuel tank in liters
  bool _turned_on; // vehicle turned on status

  // ----- Constructors --------------------------------------------------------

  Vehicle([
    this._mileage = 0,
    this._fuel_tank = Constants.MAX_DEFAULT_FUEL_TANK,
    this._turned_on = false
  ]);

  // ----- Getters and setters -------------------------------------------------

  double get mileage => _mileage;

  set setMileage(double mileage) => _mileage = mileage;

  double get fuel_tank => _fuel_tank;

  set setFuelTank(double fuel_tank) => _fuel_tank = fuel_tank;

  bool get turned_on => _turned_on;

  set setTurnedOn(bool turned_on) => _turned_on = turned_on;

  // ----- Methods -------------------------------------------------------------

  /// It gets the required liters to make the travel
  /// It means that the vehicle will run for [kilometers]
  double getRequiredLitersOnTravel(double kilometers) =>
      kilometers / Constants.MAX_DEFAULT_KM_PER_LITER;

  /// It verifies if has enough fuel
  /// It means that the vehicle will spend [required_liters]
  bool hasEnoughFuel(double required_liters) => fuel_tank >= required_liters;

  /// It turns the vehicle on
  void turnOn() {
    if (turned_on) {
      print('Vehicle is already turned on!');
    } else {
      print('Running turnOn method...');
      setTurnedOn = true;
    }
  }

  /// It turns the vehicle off
  void turnOff() {
    if (turned_on) {
      print('Running turnOff method...');
      setTurnedOn = false;
    } else {
      print('Vehicle is already turned off!');
    }
  }

  /// It calculates the new action costs
  /// It means that the vehicle will run for [kilometers]
  void calculateNewAction(double kilometers) {
    if (turned_on) {
      var required_liters = getRequiredLitersOnTravel(kilometers);

      if (hasEnoughFuel(required_liters)) {
        setMileage = mileage + kilometers;
        setFuelTank = fuel_tank - required_liters;
      }
    } else {
      print('Vehicle is not turned on!');
    }
  }
}

class Aircraft extends Vehicle with GoForward {
  @override
  String toString() {
    return 'Aircraft ['
      'mileage = $mileage, '
      'fuel_tank = $fuel_tank, '
      'turned_on = $turned_on'
    ']';
  }
}

class Plane extends Aircraft with ShowSmoke {
  @override
  String toString() {
    return 'Plane ['
      'mileage = $mileage, '
      'fuel_tank = $fuel_tank, '
      'turned_on = $turned_on'
    ']';
  }
}

class Blimp extends Aircraft {
  @override
  String toString() {
    return 'Blimp ['
      'mileage = $mileage, '
      'fuel_tank = $fuel_tank, '
      'turned_on = $turned_on'
    ']';
  }
}