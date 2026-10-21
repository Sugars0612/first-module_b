import 'package:flutter/material.dart';
import 'package:module_b_first/features/MainPage.dart';
import 'package:module_b_first/features/bootstarp/BootstarpPage.dart';
import 'package:module_b_first/features/detail/DetailPage.dart';
import 'package:module_b_first/features/discover/DiscoverPage.dart';
import 'package:module_b_first/features/home/HomePage.dart';
import 'package:module_b_first/features/home/models/FoodItem.dart';
import 'package:module_b_first/features/home/services/HomeService.dart';
import 'package:module_b_first/features/home_type/HomeTypePage.dart';
import 'package:module_b_first/features/login/LoginPage.dart';
import 'package:module_b_first/features/welcome/WelcomePage.dart';


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BootstarpPage()
    );
  }
}
