import 'package:flutter/material.dart';

class FoodSteps extends StatefulWidget {
  const FoodSteps({super.key});

  @override
  State<FoodSteps> createState() => _FoodStepsState();
}

class _FoodStepsState extends State<FoodSteps> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(color: Colors.white,
            boxShadow: [BoxShadow(
                color: Colors.black.withOpacity(0.12),
                blurRadius: 3,
                spreadRadius: 1
            )]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Steps",
                style: TextStyle(
                    fontWeight: FontWeight.w900, fontStyle: FontStyle.italic)),
            SizedBox(height: 5),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Text("内容............................",
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey
                  ),))
          ],
        ));
  }
}
