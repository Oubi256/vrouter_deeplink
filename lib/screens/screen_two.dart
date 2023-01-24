import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Widget build ScreenTwo");
    return Container(
      child: Center(
        child: Text("ScreenTwo"),
      ),
    );
  }
}
