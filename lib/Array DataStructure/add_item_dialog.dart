import 'package:flutter/material.dart';
import 'package:flutter_examples/Array%20DataStructure/provider/list_item_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddItemDialog extends ConsumerWidget {
  const AddItemDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController textEditingController =
        TextEditingController(); //editable text field
    return AlertDialog(
      title: const Text('Add Item'),
      content: TextField(
        keyboardType: TextInputType.name,
        controller: textEditingController,
        decoration: const InputDecoration(hintText: 'Enter item name'),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            final String newItem = textEditingController.text;
            if (newItem.isNotEmpty) {
              ref.read(listItemProvider.notifier).addItem(newItem);
              Navigator.of(context).pop();
            }
          },
          child: const Text('Add'),
        ),
      ],
    );
  }
}
