import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodDescription extends StatefulWidget {
  final String description;
  const FoodDescription({super.key, required this.description});

  @override
  State<FoodDescription> createState() => _FoodDescriptionState();
}

class _FoodDescriptionState extends State<FoodDescription> {
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
            Text("Description",
                style: TextStyle(
                    fontWeight: FontWeight.w900, fontStyle: FontStyle.italic)),
            SizedBox(height: 5),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Text(widget.description,
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey
                ),))
          ],
        ));
  }
}
