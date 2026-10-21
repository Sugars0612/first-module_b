import 'package:flutter/material.dart';
import 'package:module_b_first/features/detail/widgets/FoodDescription.dart';
import 'package:module_b_first/features/detail/widgets/FoodDetailCard.dart';
import 'package:module_b_first/features/detail/widgets/FoodSteps.dart';
import 'package:module_b_first/features/detail/widgets/RatingStar.dart';
import 'package:module_b_first/features/home/models/FoodItem.dart';

class DetailPage extends StatefulWidget {
  final FoodItem foodInfo;

  const DetailPage({super.key, required this.foodInfo});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.all(15),
      child: Stack(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 150,
                    // color: Colors.red,
                    child: FoodDetailCard(
                      foodInfo: widget.foodInfo,
                    ),
                  )),
                  Expanded(
                      child: Container(
                    height: 150,
                    color: Colors.blue,
                    child: Image.network(
                      widget.foodInfo.imagePathName,
                      fit: BoxFit.cover,
                    ),
                  )),
                ],
              ),
              SizedBox(height: 20),
              Container(
                  height: 200,
                  width: double.infinity,
                  child: FoodDescription(
                    description: widget.foodInfo.introduce,
                  )),
              SizedBox(height: 20),
              Container(
                height: 420,
                width: double.infinity,
                child: FoodSteps(),
                // color: Colors.black,
              )
            ],
          ),
          Positioned(
              right: 10,
              top: 135,
              child: Container(
                height: 50,
                width: 100,
                // color: Colors.white,
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.12),
                        blurRadius: 8,
                        spreadRadius: 2,
                        offset: Offset(0, 1)
                      )
                    ],
                    color: Colors.white
                  ),
                  child: Column(
                    children: [
                      Text(widget.foodInfo.rating.toString()),
                      RatingStar(starLevel: widget.foodInfo.rating, spacing: 20, size: 10)
                    ],
                  ),
                ),
              ))
        ],
      ),
    )));
  }
}
