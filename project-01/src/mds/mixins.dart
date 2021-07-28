import 'classes.dart';

mixin GoForward on Vehicle {
  /// It makes the vehicle goes forward
  /// It means that the vehicle will run for [kilometers]
  void goForward(double kilometers) {
    print('Running goForward method...');
    super.calculateNewAction(kilometers);
  }
}

mixin ShowSmoke on Vehicle {
  /// It makes the vehicle shows smoke
  /// It means that the vehicle will show smoke for [kilometers]
  void showSmoke(double kilometers) {
    print('Running showSmoke method...');
    super.calculateNewAction(kilometers);
  }
}