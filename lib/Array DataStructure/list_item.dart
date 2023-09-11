import 'package:flutter/material.dart';
import 'package:flutter_examples/Array%20DataStructure/provider/list_item_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'add_item_dialog.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Demo'),
      ),
      body: Consumer(
        builder: (context, ref,
                child) //Consumer Widget has no built in child property
            {
          final itemList = ref.watch(listItemProvider);

          var content = const Center(
            child:  Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text('No Items Found', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                 SizedBox(height: 10,),
                 Text('Click + to add an item', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
              ],
            ),
          );

          if (itemList.isEmpty) {
            return content;
          }

          return ListView.builder(
            itemCount: itemList.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  itemList[index],
                ),
                trailing: IconButton(
                  onPressed: () {
                    ref.read(listItemProvider.notifier).removeItem(index);
                  },
                  icon: const Icon(Icons.delete),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return const AddItemDialog();
              });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
