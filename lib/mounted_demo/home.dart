import 'package:flutter/material.dart';
import 'package:flutter_examples/mounted_demo/fetch_users.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mounted Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => const FetchUsers() ));
            }, child: const Text('Fetch Users'))
          ],
        ),
      ),
    );
  }
}