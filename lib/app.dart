import 'package:flutter/material.dart';
import 'package:module_b_first/features/MainPage.dart';
<<<<<<< HEAD
=======
import 'package:module_b_first/features/bootstarp/BootstarpPage.dart';
>>>>>>> feature/bootstarp-page
import 'package:module_b_first/features/detail/DetailPage.dart';
import 'package:module_b_first/features/discover/DiscoverPage.dart';
import 'package:module_b_first/features/home/HomePage.dart';
import 'package:module_b_first/features/home/models/FoodItem.dart';
import 'package:module_b_first/features/home/services/HomeService.dart';
import 'package:module_b_first/features/home_type/HomeTypePage.dart';


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
