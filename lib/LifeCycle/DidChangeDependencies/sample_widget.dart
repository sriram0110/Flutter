import 'package:flutter/material.dart';

class SampleWidget extends StatefulWidget {
  const SampleWidget({super.key});

  @override
  State<SampleWidget> createState() => _SampleWidgetState();
}

class _SampleWidgetState extends State<SampleWidget> {
  var initialData = 'Hi';

  @override
  void initState() {
    print('initState called');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print('didChangeDependencies called');
    super.didChangeDependencies();
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        initialData = 'Bye';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(initialData),
    );
  }

  @override
  void deactivate() {
    super.deactivate();
    print('deactivate called');
  }

  @override
  void dispose() {
    print('dispose called');
    super.dispose();
  }
}
