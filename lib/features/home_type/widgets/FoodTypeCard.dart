import 'package:flutter/material.dart';
import 'package:module_b_first/features/home_type/models/FoodType.dart';

class FoodTypeCard extends StatefulWidget {
  final FoodType foodtypeInfo;
  const FoodTypeCard({super.key, required this.foodtypeInfo});

  @override
  State<FoodTypeCard> createState() => _FoodTypeCardState();
}

class _FoodTypeCardState extends State<FoodTypeCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.12),
                blurRadius: 8,
                offset: Offset(0, 2),
                spreadRadius: 2)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: Image.network(widget.foodtypeInfo.imagePathname),
          ),
          SizedBox(height: 20),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(widget.foodtypeInfo.name)),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
