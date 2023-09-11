import 'package:flutter/material.dart';

class ListDemo extends StatelessWidget {
  const ListDemo({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> travel = [
      "Aeroplane",
      'Bike',
      'Cycle',
      'Drone',
      'Electric Scooter'
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text('List Demo'),
        ),
        body: ListView.builder(
            itemCount: travel.length,
            itemBuilder: (ctx, index) {
              return Dismissible(
                key: ValueKey(index),
                child: Card(
                  color: const Color.fromARGB(255, 202, 185, 123),
                  child: ListTile(
                    title: Text(travel[index]),
                  ),
                ),
              );
            }));
  }
}
