import 'package:flutter/material.dart';
import 'dart:math' as math;
class RotateAnimationWidget extends StatefulWidget {
  const RotateAnimationWidget({Key? key}) : super(key: key);

  @override
  State<RotateAnimationWidget> createState() => _RotateAnimationWidgetState();
}

class _RotateAnimationWidgetState extends State<RotateAnimationWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =  AnimationController(
      vsync: this,
      duration:  const Duration(seconds: 20),
    );
    _controller.forward();
    _controller.addListener(() {
      setState(() {
        if (_controller.status == AnimationStatus.completed) {
          _controller.repeat();
        }
      });
    });
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: AnimatedBuilder(
        animation: _controller,
        builder: (_, child) {
          return Transform.rotate(
            angle: _controller.value * 2 * math.pi,
            child: child,
          );
        },
        child:  Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: SizedBox(
              height: 300,
              width: 300,
              child: Image.asset("assets/headphone3.webp"),
            ),
          ),
        ),
      ),
    );
  }
}
