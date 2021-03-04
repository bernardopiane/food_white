import 'package:flutter_riverpod/flutter_riverpod.dart';

class Item {
  String title;
  String category;
  String description;
  String image;

  Item(this.title, this.category, this.description, this.image);
}

final items = [
  Item("High Protein Breakfast", "FOR ADULTS & KIDS", "7 foods item available for breakfast today", "images/Image.png"),
  Item("Low Fat Lunch", "FOR ADULTS & KIDS", "7 foods item available for lunch today.", "images/Image2.png"),
];



final cartListProvider = StateNotifierProvider((ref) {
  return CartList();
});

// return CartList([
//   Item("High Protein Breakfast", "FOR ADULTS & KIDS", "7 foods item available for breakfast today", "images/Image.png"),
//   Item("Low Fat Lunch", "FOR ADULTS & KIDS", "7 foods item available for lunch today.", "images/Image2.png"),
// ]);

class CartList extends StateNotifier<List<Item>>{
// class CartList extends StateNotifier<int>{
  CartList([List<Item> initialItems]) : super(initialItems ?? []);

  void add(Item item){
    state = [
      ...state,
      item
    ];
  }

  void remove(int index){
    state.removeAt(index);
  }

  // CartList() : super(0);
}