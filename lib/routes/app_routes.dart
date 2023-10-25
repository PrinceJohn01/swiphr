import 'package:flutter/material.dart';
import 'package:swiphr/presentation/choose_vehicle_screen/choose_vehicle_screen.dart';
import 'package:swiphr/presentation/rate_your_trip_screen/rate_your_trip_screen.dart';
import 'package:swiphr/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String chooseVehicleScreen = '/choose_vehicle_screen';

  static const String rateYourTripScreen = '/rate_your_trip_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    chooseVehicleScreen: (context) => const ChooseVehicleScreen(),
    rateYourTripScreen: (context) => const RateYourTripScreen(),
    appNavigationScreen: (context) => const AppNavigationScreen()
  };
}
