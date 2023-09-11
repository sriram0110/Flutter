import 'package:flutter/material.dart';
// import 'package:flutter_examples/Stack%20DataStructure/first_page.dart';
// import 'package:flutter_examples/Stack%20DataStructure/third_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: ((context) => const FirstPage()),
                //   ),
                // );
              },
              child: const Text('Go to Page 1'),
            ),
            // const Gap(20),
            // ElevatedButton(onPressed: () {
            //   Navigator.pushNamed(context, '/first', arguments: ScreenArguments('Flutter', 'everything is widget'));
            // }, child: const Text('Apply Changes'),),
             
          ],
        ),
      ),
    );
  }
}
