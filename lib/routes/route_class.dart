import 'package:get/get.dart';
import 'package:tradexapp/Screens/homescreen.dart';
import 'package:tradexapp/menupages/about_us_page.dart';
import 'package:tradexapp/menupages/dashboard_screen.dart';
import 'package:tradexapp/menupages/learn_screen.dart';
import 'package:tradexapp/menupages/strategies_screen.dart';
import 'package:tradexapp/routes/routenames.dart';

class AppRoutes {
  appRoutes() => [
        GetPage(name: RouteNames.homescreen, page: () => const HomeScreen()),
        GetPage(
          name: RouteNames.dashboard,
          page: () => MyDashBoard(),
        ),
        GetPage(name: RouteNames.startegypage, page: () => StrategyPage()),
        GetPage(name: RouteNames.aboutpage, page: () => Aboutuspage()),
        GetPage(name: RouteNames.learnpage, page: () => LearnPage()),
      ];
}
