import 'package:flutter/material.dart';
// import 'package:flutter_examples/Stack%20DataStructure/second_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Page'), 
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigator.pop(context);
           Navigator.canPop(context);
          },
          child: const Text('can pop'),
        ),
      ),
    );
  }
}