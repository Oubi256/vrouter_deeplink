import 'package:flutter/material.dart';
import 'package:vrouter/vrouter.dart';
import 'package:vrouter_deeplink/screens/screen_builder.dart';
import 'package:vrouter_deeplink/screens/screen_init.dart';
import 'package:vrouter_deeplink/screens/screen_one.dart';
import 'package:vrouter_deeplink/screens/screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return VRouter(
      title: "Example of issue",
      initialUrl: "/two",
      routes: [
        VNester(
          path: "/",
          widgetBuilder: (child) => ScreenBuilder(child: child),
          nestedRoutes: [
            VWidget(path: "/", widget: ScreenInit()),
            VWidget(path: "/one", widget: ScreenOne()),
            VWidget(path: "/two", widget: ScreenTwo()),
          ],
        ),
      ],
    );
  }
}
