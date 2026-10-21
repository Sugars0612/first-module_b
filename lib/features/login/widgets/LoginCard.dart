import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginCard extends StatefulWidget {
  const LoginCard({super.key});

  @override
  State<LoginCard> createState() => _LoginCardState();
}

class _LoginCardState extends State<LoginCard> {
  bool _checkboxStatus = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black.withOpacity(0.7)),
      child: Column(
        children: [
          SizedBox(height: 15),
          Container(
              height: 45,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: Row(
                // mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(width: 10),
                  Icon(
                    Icons.person_2_outlined,
                    size: 25,
                    color: Colors.grey,
                  ),
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        hintText: "Please enter you account",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                        border:
                            OutlineInputBorder(borderSide: BorderSide.none)),
                  ))
                ],
              )),
          SizedBox(height: 10),
          Container(
              height: 45,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: Row(
                // mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(width: 10),
                  Icon(
                    Icons.remove_red_eye_outlined,
                    size: 25,
                    color: Colors.grey,
                  ),
                  Expanded(
                      child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Please enter you password",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                        border:
                            OutlineInputBorder(borderSide: BorderSide.none)),
                  ))
                ],
              )),
          SizedBox(height: 10),
          Container(
            height: 30,
            width: double.infinity,
            // color: Colors.blue,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _checkboxStatus = !_checkboxStatus;
                    });
                  },
                  child: _checkboxStatus == false
                      ? Icon(
                          Icons.check_circle_outline_outlined,
                          color: Colors.grey,
                        )
                      : Icon(Icons.check_circle, color: Colors.grey),
                ),
                SizedBox(width: 10),
                Text("I have read and agreed User Privary Policy",
                    style: TextStyle(color: Colors.grey))
              ],
            ),
          ),
          SizedBox(height: 80),
          Container(
            // padding: EdgeInsets.symmetric(horizontal: 20),
            height: 40,
            width: 225,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.amber,
            ),
            child: Text("Login",
                style: TextStyle(fontSize: 18, color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
