import 'package:flutter/material.dart';
import 'package:module_b_first/features/home_type/services/HomeTypeService.dart';
import 'package:module_b_first/features/home_type/widgets/FoodTypeCard.dart';
import 'package:module_b_first/features/home_type/widgets/Waterfall.dart';

import 'models/FoodType.dart';

class HomeTypePage extends StatefulWidget {
  const HomeTypePage({super.key});

  @override
  State<HomeTypePage> createState() => _HomeTypePageState();
}

class _HomeTypePageState extends State<HomeTypePage> {
  HomeTypeService homeTypeService = HomeTypeService();
  List<FoodType> foodsType = [];

  @override
  void initState() {
    // TODO: implement initState
    loadFoodsType();
    super.initState();
  }

  void loadFoodsType() async {
    final foodsType = await homeTypeService.getFoodsType();

    setState(() {
      this.foodsType = foodsType;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main dishes",
        style: TextStyle(
          color: Colors.black
        )),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: Waterfall(
              children: List.generate(foodsType.length, (index) {
            return FoodTypeCard(foodtypeInfo: foodsType[index]);
          }))),
    );
  }

  @override
  void dispose() {
    homeTypeService.dispose();
    // TODO: implement dispose
    super.dispose();
  }
}
