import 'package:flutter/material.dart';

class MemoryManagementDemo extends StatefulWidget {
  const MemoryManagementDemo({super.key});

  @override
  State<MemoryManagementDemo> createState() => _MemoryManagementDemoState();
}

class _MemoryManagementDemoState extends State<MemoryManagementDemo> {
  List<String> items = [];

  void _addItem() {
    setState(() {
      items.add('Item ${items.length + 1}');
    });
  }

  void _clearItems() {
    setState(() {
      items.clear();
    });
  }

  @override
  void dispose() {
    items.clear(); // Clear the list when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Memory Management Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            onPressed: _addItem,
            child: const Text('Add Item'),
          ),
          ElevatedButton(
            onPressed: _clearItems,
            child: const Text('Clear Items'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(items[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
