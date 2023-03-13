import 'package:flutter/material.dart';
import 'package:tradexapp/Screens/authscreen.dart';

//-----------------------------------------
import 'package:tradexapp/Screens/homescreen.dart';
//-----------------------------------------
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            home: StreamBuilder(
                stream: FirebaseAuth.instance.authStateChanges(),
                builder: (Buildcontext, usersnapshot) {
                  if (usersnapshot.hasData) {
                    return HomeScreen();
                  } else {
                    return AuthScreen();
                  }
                }),
          );
        });
  }
}
