import 'package:flutter/material.dart';
import 'package:module_b_first/features/home/models/CategoriesItem.dart';

class CategoriesCard extends StatefulWidget {
  final CategoriesItem categoriesInfo;
  const CategoriesCard({super.key, required this.categoriesInfo});

  @override
  State<CategoriesCard> createState() => _CategoriesCardState();
}

class _CategoriesCardState extends State<CategoriesCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.yellow, width: 2),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12, offset: Offset(0, 2), blurRadius: 8, spreadRadius: 2)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(widget.categoriesInfo.imagePathName),
            Text(widget.categoriesInfo.name)
          ],
        ));
  }
}
