import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Widget build ScreenOne");
    return Container(
      child: Center(
        child: Text("ScreenOne"),
      ),
    );
  }
}
