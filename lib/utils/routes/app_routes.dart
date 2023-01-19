import 'package:dotplus/view/auth/login_view.dart';
import 'package:flutter/material.dart';

import '../../view/home/dashboard_view.dart';
import '../../view/home/welcome_screen.dart';

class AppRoutes {
  static const String welcomeScreen = '/welcomeScreen';

  static const String welcomeLoginScreen = '/welcomeLoginScreen';

  static const String dashboadScreen = '/dashboadscreen';

  static Map<String, WidgetBuilder> routes = {
    welcomeScreen: (context) => WelcomeScreen(),
    welcomeLoginScreen: (context) => LoginView(),
    dashboadScreen: (context) => DashboardView(),
  };
}
