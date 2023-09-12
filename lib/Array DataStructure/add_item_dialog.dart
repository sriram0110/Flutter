import 'package:flutter/material.dart';
import 'package:flutter_examples/Array%20DataStructure/provider/list_item_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class AddItemDialog extends ConsumerWidget {
  const AddItemDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController textEditingController =
        TextEditingController(); //editable text field
        final TextEditingController priceEditingController = TextEditingController();
    return AlertDialog(
      contentPadding: const EdgeInsets.all(16.0),
      title: const Text('Add Item'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField( 
            keyboardType: TextInputType.name,
            controller: textEditingController,
            decoration: const InputDecoration(hintText: 'Enter item name'),
          ),
          const Gap(20.0),
          TextField( 
            keyboardType: TextInputType.number,
            controller: priceEditingController,
            decoration: const InputDecoration(hintText: 'Enter item price'),
          ),
        ],
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
            final double newPrice = double.parse(priceEditingController.text);
            if (newItem.isNotEmpty) {
              ref.read(listItemProvider.notifier).addItem(newItem, newPrice);
              Navigator.of(context).pop();
            }
          },
          child: const Text('Add'),
        ),
      ],
    );
  }
}
