import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:module_b_first/features/detail/widgets/RatingStar.dart';
import 'package:module_b_first/features/discover/models/ChefItem.dart';

class ChefCard extends StatefulWidget {
  final ChefItem chefItem;
  const ChefCard({super.key, required this.chefItem});

  @override
  State<ChefCard> createState() => _ChefCardState();
}

class _ChefCardState extends State<ChefCard> {
  bool likeStatus = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.12),
                  blurRadius: 8,
                  spreadRadius: 3,
                  offset: Offset(0, 6))
            ]),
        child: Stack(
          children: [
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child:
                      Image.network(widget.chefItem.foods[0].imagePathName),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(widget.chefItem.name,
                    style: TextStyle(fontSize: 25, color: Colors.amber)),
                SizedBox(height: 10),
                Container(
                  // color: Colors.amber,
                  height: 30,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RatingStar(starLevel: widget.chefItem.rating, spacing: 10, size: 25),
                      SizedBox(width: 10),
                      Text(widget.chefItem.rating.toString(),
                          style:
                              TextStyle(color: Colors.blueAccent, fontSize: 18))
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 200,
                  width: double.infinity,
                  child: Text(
                    widget.chefItem.introduce,
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ],
            ),
            Positioned(
                top: 80,
                // right: 0,
                left: 85,
                child: Container(
                  // color: Colors.amber,
                  width: 150,
                  height: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child:
                        Image.network(widget.chefItem.avatarPathname),
                  ),
                )),
            Positioned(
                right: 20,
                top: 160,
                child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.17),
                            blurRadius: 8,
                            // offset: Offset(0, 2)
                          )
                        ]),
                    child: Center(
                        child: GestureDetector(
                          onTap: () {
                            // print(1);
                            setState(() {
                              likeStatus = !likeStatus;
                            });
                          },
                          child: likeStatus == true ? Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ) : Icon(
                            Icons.favorite_border,
                            color: Colors.grey,
                          ),
                        )
                    )
                )
            )
          ],
        ));
  }
}
