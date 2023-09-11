import 'package:flutter/material.dart';

class WidgetBinding extends StatefulWidget {
  const WidgetBinding({super.key});

  @override
  State<WidgetBinding> createState() => _WidgetBindingState();
}

class _WidgetBindingState extends State<WidgetBinding> {
  String message = 'Initial Message';

  @override
  void initState() {
    super.initState();
    debugPrint('init called');
  }

  void textChange() async{
    Future<void>.delayed(
      const Duration(seconds: 3),
      () => setState(() {
        message = 'Updated Message';
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('build called');
    // Schedule a callback to change the message after the frame is drawn.

    return Scaffold(
      appBar: AppBar(
        title: const Text('PostFrameCallback Example'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: textChange,
            child: const Text('ChangeText'),
          ),
          Text(message),
        ],
      ),
    );
  }
}
