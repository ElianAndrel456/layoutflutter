import 'package:flutter/material.dart';
import 'package:layoutflutter/constants.dart';
import 'package:layoutflutter/screen/signin_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/background.jpg"),
                      fit: BoxFit.cover),
                ),
              )),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "BAKING LESSONS\n",
                          style: Theme.of(context).textTheme.headlineMedium),
                      TextSpan(
                          text: "MASTER THER ART OF BAKING\n",
                          style: Theme.of(context).textTheme.headlineSmall)
                    ],
                  )),
              FittedBox(
                child: GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignInPage())),
                  child: Container(
                    margin: EdgeInsets.only(bottom: 25),
                    padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: kPrimaryColor),
                    child: Row(
                      children: [
                        Text(
                          "START LEARNING",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(color: Colors.black),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.arrow_forward, color: Colors.black)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
