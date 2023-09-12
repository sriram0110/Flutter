import 'package:flutter_examples/Array%20DataStructure/model/user_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListItemNotifier extends StateNotifier<List<UserData>> {
  //State Notofier - generic type, what kind of data managed by notifier
  ListItemNotifier() : super([]);
  // final List<String> _listItems = [];

  // List<String> get items => _listItems;

  void addItem(String item, double price) {
    state = [...state, UserData(item, price)];
  }

  void removeItem(int index) {
    state = List.from(state)
      ..removeAt(
          index); // .. -> cascade operator -> used to chain the removeAt(index) operation to the newly created list
  }
}

final listItemProvider =
    StateNotifierProvider<ListItemNotifier, List<UserData>>(
        (ref) => ListItemNotifier());
