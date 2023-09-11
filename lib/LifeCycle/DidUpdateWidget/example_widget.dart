import 'package:flutter/material.dart';

class NewWidget extends StatefulWidget {
  const NewWidget({super.key, required this.value});

  final int value;
  @override
  State<NewWidget> createState() => _NewWidgetState();
}

class _NewWidgetState extends State<NewWidget> {
  @override
  void didUpdateWidget(covariant NewWidget oldWidget) {
    print('didUpdateWidget called');
    if (oldWidget.value != widget.value) {
      print('Value changed from ${oldWidget.value} to ${widget.value}');
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print('child build');
    return Text(widget.value.toString());
  }
}
