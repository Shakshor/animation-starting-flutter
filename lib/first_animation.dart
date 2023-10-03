import 'package:flutter/material.dart';


class FirstAnimation extends StatefulWidget {
  const FirstAnimation({super.key});

  @override
  State<FirstAnimation> createState() => _FirstAnimationState();
}

class _FirstAnimationState extends State<FirstAnimation> with SingleTickerProviderStateMixin {


  late AnimationController _animationController;

  bool _isVisible = false;



  @override
  void initState() {

    _animationController = AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _animationController.repeat(reverse: false);

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('First Animation'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      body: Center(
          child: GestureDetector(

            onTap: (){
              setState(() {
                _isVisible = !_isVisible;
              });
            },

            child: AnimatedIcon(
              icon: AnimatedIcons.play_pause,
              progress: _animationController,
              size: 200,
            ),
          )
      ),


    );
  }
}





/*
AnimatedContainer(
      width: _isExpanded ? 300 : 120,
      height: _isExpanded ? 300 : 120,
      color: _isExpanded ? Colors.red : Colors.blue,
      duration: const Duration(seconds: 1),
      curve: Curves.bounceInOut,
      child: const Center(
      child: Text('Expand Animation'),
      ),
)
*/


//----- animatedCrossFade----------
/*
AnimatedCrossFade(

    duration: Duration(seconds: 2),
    firstChild: Icon(Icons.flag, size: 100,),
    secondChild: Icon(Icons.map, size: 100,),
    crossFadeState: _isVisible? CrossFadeState.showFirst : CrossFadeState.showSecond,

)*/
