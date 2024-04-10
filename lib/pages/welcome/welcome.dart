import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            scrollDirection: Axis.horizontal,
            children: [
              Image.asset("assets/images/happy.png"),
              Image.asset("assets/images/run.png"),
              Image.asset("assets/images/tongue-out.png"),
            ],
          )
        ],
      ),
    );
  }
}
