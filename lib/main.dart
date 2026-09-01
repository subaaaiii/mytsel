import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mytsel/app/widgets/splash.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const new({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'GoogleSans'),
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
  // return FutureBuilder(
  //   future: Future.delayed(Duration(seconds: 1)),
  //   builder: (context, snapshot) {
  //     if (snapshot.connectionState == ConnectionState.waiting) {
  //       return Splash();
  //     } else {
  //       return GetMaterialApp(
  //         debugShowCheckedModeBanner: false,
  //         title: "Application",
  //         initialRoute: AppPages.INITIAL,
  //         getPages: AppPages.routes,
  //       );
  //     }
  //   },
  // );
  // }
}
