import 'package:flutter/material.dart';
import 'package:module_b_first/features/detail/DetailPage.dart';
import 'package:module_b_first/features/home/models/FoodItem.dart';

class FoodCard extends StatefulWidget {
  final FoodItem foodItem;
  const FoodCard({super.key, required this.foodItem});

  @override
  State<FoodCard> createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => DetailPage(foodInfo: widget.foodItem)));
      },
      child: Container(
        // height: 600,
        // width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.12),
                  offset: Offset(0, 2),
                  blurRadius: 8,
                  spreadRadius: 0)
            ]),
        child: Stack(
          children: [
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                  child: Image.network(
                    widget.foodItem.imagePathName,
                    fit: BoxFit.cover,
                    // width: double.infinity,
                    height: 180,
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  // height: double.infinity,
                  // width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(widget.foodItem.name,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w900)),
                          Column(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Text(widget.foodItem.rating.toString(),
                                  style: TextStyle(
                                      fontSize: 8, fontWeight: FontWeight.w300))
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 8),
                      Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            widget.foodItem.introduce,
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          )),
                      // Text("内容")
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
                right: 10,
                top: 10,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(10)),
                  width: 25,
                  height: 25,
                  child: Icon(
                    Icons.favorite_border_outlined,
                    size: 18,
                    color: Colors.grey,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
