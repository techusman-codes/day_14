import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // chnage the high and width of the box
  double boxHeight = 100;
  double boxWeight = 100;
  var boxColor = Colors.deepPurple;
  double boxX = -1;
  double boxY = -1;

  void _expandBox() {
    setState(() {
      boxHeight = 300;
      boxWeight = 300;
    });
  }

  void _changeBoxColor() {
    setState(() {
      boxColor = Colors.pink;
    });
  }

  void _moveBox() {
    setState(() {
      boxX = 1;
      boxY = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _moveBox,
      child: Scaffold(
        backgroundColor: Colors.deepPurple[200],
        body: Center(
          child: AnimatedContainer(
            duration: const Duration(seconds: 10),
            alignment: Alignment(boxX, boxY),
            child: Container(
              height: 100,
              width: 100,
              color: Colors.purple,
            ),
          ),
        ),
      ),
    );
  }
}
