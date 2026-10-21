import 'package:flutter/material.dart';

class RatingStar extends StatefulWidget {
  final double starLevel;
  final double spacing;
  final double size;

  const RatingStar(
      {super.key,
      required this.starLevel,
      required this.spacing,
      required this.size});

  @override
  State<RatingStar> createState() => _RatingStarState();
}

class _RatingStarState extends State<RatingStar> {
  int starCount = 0;
  bool isInteger = false;

  @override
  void initState() {
    // TODO: implement initState
    starCount = widget.starLevel.ceil();
    isInteger = widget.starLevel == widget.starLevel.truncate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (isInteger) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(starCount, (index) {
          return Icon(Icons.star,size: widget.size, color: Colors.yellow);
        }),
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(starCount, (index) {
          if (index != starCount - 1) {
            return Icon(Icons.star,size: widget.size, color: Colors.yellow);
          } else {
            return Stack(
              children: [Icon(Icons.star,size: widget.size, color: Colors.yellow), Icon(Icons.star_border ,size: widget.size, color: Colors.white)],
            );
          }
        }),
      );
    }
  }
}
