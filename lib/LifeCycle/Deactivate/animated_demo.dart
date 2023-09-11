import 'package:flutter/material.dart';
import 'package:flutter_examples/Stack%20DataStructure/first_page.dart';

class AnimatedDemo extends StatefulWidget {
  const AnimatedDemo({super.key});

  @override
  State<AnimatedDemo> createState() => _AnimatedDemoState();
}

class _AnimatedDemoState extends State<AnimatedDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    print('init');
    super.initState();

    // Initialize AnimationController
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    // Create animation with Tween
    _animation = Tween<Offset>(
      begin: const Offset(0, 0),
      end: const Offset(0, 1),
    ).animate(_controller);
  }

  @override
  void deactivate() {
    print('deactivate');
    // Pause the animation when the widget is removed from the tree
    _controller.stop();
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Widget Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SlideTransition(
              position: _animation,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'Slide me!',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Start the animation when the FloatingActionButton is pressed
          _controller.forward();
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }

  @override
  void dispose() {
    print('dipose');
    _controller.dispose(); // Dispose of the controller when not needed
    super.dispose();
  }
}
