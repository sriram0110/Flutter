import 'package:flutter/material.dart';

class BuildContextEx extends StatelessWidget {
  const BuildContextEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Handle Drawer'),
      ),
      drawer: const Drawer(
        child: Center(
          child: Text('sample'),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Builder(
              builder: (context) {
                return ElevatedButton(
                    onPressed: () => Scaffold.of(context).openDrawer(),
                    child: const Text('Open Drawer'));
              }
            ),
          ],
        ),
      ),
    );
  }
}
