import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DisplayPage extends StatelessWidget {
  const DisplayPage({super.key});

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final name = routeArgs['name'].toString();
    final age = routeArgs['age'].toString();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Display Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: const TextStyle(fontSize: 20),
            ),
            const Gap(10.0),
            Text(
              age,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
