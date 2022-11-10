import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({super.key});

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animations'),
      ),
      body: Column(
        children: [
          // GestureDetector(
          //   child: AnimatedIcon(
          //     icon: AnimatedIcons.close_menu,
          //     progress: null,
          //   ),
          // ),
          SizedBox(
            height: 100,
            child: AnimatedBuilder(
              animation: animationController,
              builder: (BuildContext context, Widget? child) {
                return Transform.rotate(
                  angle: animationController.value * 4,
                  child: Center(
                      child: Icon(
                    Icons.ac_unit,
                    size: 100,
                  )),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
