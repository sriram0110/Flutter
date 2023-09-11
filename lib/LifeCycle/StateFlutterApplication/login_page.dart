import 'package:flutter/material.dart';

import 'dashboard_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State of Mobile Application'),
      ),
      body: Center(
        child: TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SecurePage()));
            },
            child: const Text('Click to Login')),
      ),
    );
  }
}
