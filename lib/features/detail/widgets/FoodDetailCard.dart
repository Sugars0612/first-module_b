import 'package:flutter/material.dart';
import 'package:module_b_first/features/home/models/FoodItem.dart';

class FoodDetailCard extends StatefulWidget {
  final FoodItem foodInfo;

  const FoodDetailCard({super.key, required this.foodInfo});

  @override
  State<FoodDetailCard> createState() => _FoodDetailCardState();
}

class _FoodDetailCardState extends State<FoodDetailCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.12),
              blurRadius: 3,
              // offset: Offset(0, 2),
              spreadRadius: 1)
        ],
      ),
      child: Column(children: [
        SizedBox(
            width: 100,
            child: Text(
              widget.foodInfo.name,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.amber,
                  fontWeight: FontWeight.w500),
            )),
        SizedBox(
          height: 10,
        ),
        Text(
          "Recommend!",
          style: TextStyle(
              fontSize: 10,
              color: Colors.blueAccent,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 50,
          child: Center(
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Prep", style: TextStyle(fontSize: 8,
                      color: Colors.amber)),
                      Text(
                        "10 Min",
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return Row(
                    children: [
                      SizedBox(width: 10),
                      Container(
                        width: 1,
                        height: 25,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 10)
                    ],
                  );
                },
                itemCount: 3,
              ),
          ),
        )
      ]),
    );
  }
}
