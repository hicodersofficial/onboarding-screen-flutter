import 'package:flutter/material.dart';
import 'package:onboading_app/onboarding.dart';

main() {
  runApp(Greeny());
}

class Greeny extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Greeny',
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xffDFEAD9),
          body: Onboarding(),
        ),
      ),
    );
  }
}
