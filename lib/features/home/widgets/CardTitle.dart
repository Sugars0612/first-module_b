import 'package:flutter/material.dart';

class CardTitle extends StatefulWidget {
  final String text;
  const CardTitle({super.key, required this.text});

  @override
  State<CardTitle> createState() => _CardTitleState();
}

class _CardTitleState extends State<CardTitle> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.text,
      style: TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 22
      )
    );
  }
}
