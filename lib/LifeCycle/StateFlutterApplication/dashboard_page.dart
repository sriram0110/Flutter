import 'package:flutter/material.dart';
// import 'package:flutter_examples/widget_binding.dart';

class SecurePage extends StatefulWidget {
  const SecurePage({super.key});

  @override
  State<SecurePage> createState() => _SecurePageState();
}

class _SecurePageState extends State<SecurePage> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('dashboard didChangeDependencies');
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      print('Jumped to login page for security purpose');
      Navigator.popUntil(context, (route) => route.settings.name == '/');
    }
    print('state - $state');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Secure Page'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is secured dashboard page',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
