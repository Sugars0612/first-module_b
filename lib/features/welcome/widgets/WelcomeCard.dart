import 'package:flutter/material.dart';
import 'package:module_b_first/features/login/LoginPage.dart';

class WelcomeCard extends StatelessWidget {
  const WelcomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5),
      color: Colors.black.withOpacity(0.6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Join us",style: TextStyle(
            fontSize: 35,
            color: Colors.white,
            // fontStyle: FontStyle.normal,
            // decoration: TextDecoration.none
          )),
          Text("right now",style: TextStyle(
              fontSize: 35,
            color: Colors.white,
          )),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
            },
            child: Container(
              // padding: EdgeInsets.symmetric(horizontal: 20),
              height: 40,
              width: 225,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.amber,
              ),
              child: Text("Login", style: TextStyle(
                  fontSize: 18,
                  color: Colors.white
              )),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 20,
            width: double.infinity,
            // color: Colors.blue,
            child: Row(
              children: [
                Expanded(child: Container(
                  height: 1,
                  width: 1,
                  // width: double.infinity,
                  color: Colors.grey,
                )),
                Text(" or ",style: TextStyle(color: Colors.white),),
                Expanded(child: Container(
                  height: 1,
                  width: 1,
                  // width: double.infinity,
                  color: Colors.grey,
                )),
              ],
            ),
          ),

          SizedBox(height: 20),
          Container(
            // padding: EdgeInsets.symmetric(horizontal: 20),
            height: 40,
            width: 225,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.amber,
            ),
            child: Text("Register", style: TextStyle(
                fontSize: 18,
                color: Colors.white
            )),
          ),
        ],
      ),
    );
  }
}
