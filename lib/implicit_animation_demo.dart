import 'package:flutter/material.dart';

class ImplicitAnimationDemo extends StatefulWidget {
  const ImplicitAnimationDemo({super.key});

  @override
  State<ImplicitAnimationDemo> createState() => _ImplicitAnimationDemoState();
}

class _ImplicitAnimationDemoState extends State<ImplicitAnimationDemo> {
  static bool _isBig = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedContainer(
          curve: Curves.bounceIn,
          width: _isBig ? 100 : 200,
          duration: const Duration(seconds: 1),
          child: Image.network(
              'https://w7.pngwing.com/pngs/134/138/png-transparent-star-golden-stars-angle-3d-computer-graphics-symmetry-thumbnail.png'),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
            _isBig = !_isBig;
              
            });
          },
          child: const Text('Animate'),
        ),
      ],
    );
  }
}
