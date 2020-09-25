import 'package:flutter/material.dart';
import 'package:hey/otp/otp.dart';
import 'package:hey/woExp/woExp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: WoExpScreen(),
    );
  }
}
