import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_white/sampleData.dart';
import 'package:food_white/widgets/BottomBarIcon.dart';
import 'package:food_white/widgets/MyBottomBar.dart';
import 'package:food_white/widgets/MyTopBar.dart';

class CartPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final cartList = watch(cartListProvider.state);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MyTopBar(),
            Expanded(
              child: cartList.length == 0
                  ? Center(
                child: Text("Empty"),
              )
                  : buildItems(cartList),
            ),
            MyBottomBar()
          ],
        ),
      )
    );
  }

  buildItems(cartList) {
    List<Widget> items = [];

    for (Item item in cartList) {
      items.add(
        ListTile(
          onTap: () {},
          title: Text('${item.title}'),
        ),
      );
    }

    return SafeArea(
      child: Container(
        child: ListView(
          children: items,
        ),
      ),
    );
  }
}
