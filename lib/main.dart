import 'package:flutter/material.dart';
import 'package:layoutflutter/constants.dart';
import 'package:layoutflutter/screen/auth_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auth Screen',
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: kBackgroundColor,
          textTheme: TextTheme(
            headlineMedium:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            labelLarge: TextStyle(color: kPrimaryColor),
          ),
          inputDecorationTheme: InputDecorationTheme(
              enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.white.withOpacity(.2))))),
      home: WelcomeScreen(),
    );
  }
}
