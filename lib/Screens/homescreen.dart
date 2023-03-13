import 'package:flutter/material.dart';
import 'package:tradexapp/routes/routenames.dart';

import 'package:get/get.dart';

import '../menupages/strategies_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: IconButton(onPressed: null, icon: Icon(Icons.menu)),
        title: Text("TradeX"),
        actions: [IconButton(onPressed: null, icon: Icon(Icons.logout))],
      ),

      //-------------------------------------------------
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            //----------------Optional
            UserAccountsDrawerHeader(
              accountName: Text("Abhishek"),
              accountEmail: Text("abc@gail.com"),
              currentAccountPicture: Image.asset(
                'assets/images/demoimage2.jpg',
                fit: BoxFit.contain,
              ) //add an image or an avatar
              ,
            ),

            //-------------------------------------------------------------
            ListTile(
              title: Text("Dashboard"),
              onTap: () {
                // Navigator.push(
                Get.toNamed(RouteNames.dashboard);
                //   context,
                //   MaterialPageRoute(builder: (context) => const MyDashBoard()),
                // );
              },
            ),
            ListTile(
              title: Text("Strategies"),
              onTap: () {
                //Get.toNamed(RouteNames.startegypage);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => StrategyPage()),
                // );
                Get.to(StrategyPage());
              },
            ),
            ListTile(
              title: Text("About Us"),
              onTap: () {
                Get.toNamed(RouteNames.aboutpage);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const Aboutuspage()),
                // );
              },
            ),
            ListTile(
              title: Text("Learn"),
              onTap: () {
                Get.toNamed(RouteNames.learnpage);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const LearnPage()),
                // );
              },
            ),
            // divide(first:, second)

            //---------------list of cotents
          ],
        ),
      ),
    );
  }
}
