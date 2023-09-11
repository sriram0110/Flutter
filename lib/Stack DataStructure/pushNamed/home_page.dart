import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final nameTextController = TextEditingController();
  final ageTextController = TextEditingController();

  void navigateNextPage() {
    Navigator.of(context).pushNamed('display', arguments: {
      'name': nameTextController.text,
      'age': ageTextController.text,
    });
  }

  //   @override
  // void deactivate() {
  //   super.deactivate();
  //   print('homepage - deactivate');

  // }

  // @override
  // void dispose() {
  //   super.dispose();
  //   print('homepage - dispose');

  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: nameTextController,
                keyboardType: TextInputType.name,
                maxLength: 20,
                decoration: const InputDecoration(hintText: 'Enter your name'),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: ageTextController,
                keyboardType: TextInputType.number,
                maxLength: 3,
                decoration: const InputDecoration(hintText: 'Enter your name'),
              ),
            ),
            ElevatedButton.icon(
              onPressed: navigateNextPage,
              icon: const Icon(Icons.arrow_right),
              label: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }


}
