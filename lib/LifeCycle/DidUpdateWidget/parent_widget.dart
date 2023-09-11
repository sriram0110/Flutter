import 'package:flutter/material.dart';
import 'package:flutter_examples/LifeCycle/DidUpdateWidget/example_widget.dart';

class ParentWidget extends StatefulWidget {
  const ParentWidget({super.key});

  @override
  State<ParentWidget> createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  int _value = 24;

  void changeValue()
  {
    setState(() {
      _value = 24;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        NewWidget(value: _value), //didUpdateWidget is triggered when the instance of the widget is being reused even though the parent widget is causing a rebuild.
        ElevatedButton(onPressed: changeValue, child: const Text('Change Value'))
      ],
    );
  }
}