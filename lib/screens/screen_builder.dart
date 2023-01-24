import 'package:flutter/material.dart';
import 'package:vrouter/vrouter.dart';

class ScreenBuilder extends StatefulWidget {
  final Widget child;

  const ScreenBuilder({Key? key, required this.child}) : super(key: key);

  @override
  State<ScreenBuilder> createState() => _ScreenBuilderState();
}

class _ScreenBuilderState extends State<ScreenBuilder> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          context.vRouter.to('/');
          break;
        case 1:
          context.vRouter.to('/one');
          break;
        case 2:
          context.vRouter.to('/two');
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    print("prev_url: ${context.vRouter.previousUrl} | curr_url: ${context.vRouter.url}");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Container(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("prev_url: ${context.vRouter.previousUrl}"),
              Text("curr_url: ${context.vRouter.url}"),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey,
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.teal,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.start),
            label: 'Init',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_one),
            label: 'One',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_two),
            label: 'Two',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
