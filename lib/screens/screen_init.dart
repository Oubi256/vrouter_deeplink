import 'package:flutter/material.dart';

class ScreenInit extends StatelessWidget {
  const ScreenInit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Widget build ScreenInit");
    return Container(
      child: Center(
        child: Text("ScreenInit"),
      ),
    );
  }
}
