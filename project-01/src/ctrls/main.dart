import '../mds/classes.dart';

void main(List<String> arguments) {
  var aircraft = Aircraft();

  print(aircraft);

  aircraft.turnOn();
  aircraft.turnOn();

  aircraft.goForward(15);

  print(aircraft);

  aircraft.turnOff();
  aircraft.turnOff();

  print(aircraft);

  aircraft.goForward(15);

  var plane = Plane();

  plane.showSmoke(15);

  plane.turnOn();
  plane.turnOn();

  plane.goForward(15);

  print(plane);

  plane.turnOff();
  plane.turnOff();
}
