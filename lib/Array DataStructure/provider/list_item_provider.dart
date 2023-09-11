import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListItemNotifier extends StateNotifier<List<String>> {
  ListItemNotifier() : super([]);
  // final List<String> _listItems = [];

  // List<String> get items => _listItems;

  void addItem(String item) {
    state = [...state, item];
  }

  void removeItem(int index) {
    state = List.from(state)..removeAt(index);  // .. -> cascade operator -> used to chain the removeAt(index) operation to the newly created list
  }
}

final listItemProvider = StateNotifierProvider<ListItemNotifier, List<String>>(
    (ref) => ListItemNotifier());

    
