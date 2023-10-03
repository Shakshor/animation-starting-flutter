import 'dart:async';

import 'package:flutter/material.dart';

class AnimatedSwitcherScreen extends StatefulWidget {
  const AnimatedSwitcherScreen({super.key});

  @override
  State<AnimatedSwitcherScreen> createState() => _AnimatedSwitcherScreenState();
}

class _AnimatedSwitcherScreenState extends State<AnimatedSwitcherScreen> {

  bool _isSwitched = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            AnimatedSwitcher(
              duration: Duration(seconds: 2),

              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(
                  scale: animation,
                  child: child,
                );
              },

              child: _isSwitched ? Icon(
                Icons.favorite,
                color: Colors.red,
                size: 200,
                key: UniqueKey(),
              ) :
                  Icon(
                    Icons.favorite_border,
                    color: Colors.grey,
                    size: 200,
                    key: UniqueKey(),
                  ),
            ),

            ElevatedButton(
                onPressed: (){
                    setState(() {
                      _isSwitched = !_isSwitched;
                    });
                },
                child: Text(
                    _isSwitched ? 'Turn off' : 'Turn on'
                ),
            ),



          ],
        ),
      ),

    );
  }
}
