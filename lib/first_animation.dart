import 'package:flutter/material.dart';


class FirstAnimation extends StatefulWidget {
  const FirstAnimation({super.key});

  @override
  State<FirstAnimation> createState() => _FirstAnimationState();
}

class _FirstAnimationState extends State<FirstAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('First Animation'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

    );
  }
}
