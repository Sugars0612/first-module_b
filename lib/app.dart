import 'package:flutter/material.dart';
import 'package:module_b_first/features/MainPage.dart';
import 'package:module_b_first/features/bootstarp/BootstarpPage.dart';
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
    FoodItem item = FoodItem(id: 1, imagePathName: "http://10.0.2.2:9999/media/foods/1.png", name: "test", rating: 4.1, introduce: "l卡尼玛");
    return MaterialApp(
      home: BootstarpPage()
    );
  }
}
