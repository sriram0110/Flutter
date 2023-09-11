import 'package:flutter/material.dart';
import 'package:flutter_examples/Stack%20DataStructure/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {


    // final ModalRoute? route = ModalRoute.of(context);
    // if (route != null) {
    //   args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    // }

    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const Text('Extracted Arguments'),
            // const Gap(10),
            // Text('Title - ${args!.title}'),
            // const Gap(10),
            // Text('Title - ${args.message}'),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecondPage()));
                  // Navigator.pushReplacementNamed(context, '/second');
                },
                child: const Text('Go to Page 2')),
            const SizedBox(
              height: 12,
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.maybePop(context);
                Navigator.pop(context);
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
