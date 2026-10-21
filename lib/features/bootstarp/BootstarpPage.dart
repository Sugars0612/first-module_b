import 'package:flutter/material.dart';
import 'package:module_b_first/features/MainPage.dart';
import 'package:module_b_first/features/welcome/WelcomePage.dart';

class BootstarpPage extends StatelessWidget {
  const BootstarpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox.expand(
          child: Image.asset(
            "assets/bootstarp.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 20,
          right: 20,
          child: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => WelcomePage()));
            },
            child: Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100)),
                child: Center(
                  child: Text(
                    "Skip",
                    style: TextStyle(color: Colors.amber, fontSize: 15),
                  ),
                )),
          ),
        )
      ],
    );
  }
}
