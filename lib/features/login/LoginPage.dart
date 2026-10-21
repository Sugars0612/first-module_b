import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:module_b_first/features/login/widgets/LoginCard.dart';
import 'package:module_b_first/features/welcome/widgets/WelcomeCard.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: Image.asset("assets/welcome.png",fit: BoxFit.cover,),
          ),
          SafeArea(child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: 100),
                height: 800,
                width: 500,
                // color: Colors.black,
                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                            height: 150,
                            width: 150,
                            // color: Colors.black,
                            child: ClipOval(
                              // borderRadius: BorderRadius.circular(100),
                              child: Image.asset("assets/logo.png"),
                            )),
                        SizedBox(height: 30),
                        Container(
                          height: 300,
                          width: 380,
                          // color: Colors.amber,
                          child: LoginCard(),
                        ),
                      ],
                    )
                  ],
                ),
              )
          ),),



        ],
      ),
    );
  }
}
