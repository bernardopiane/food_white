import 'package:flutter/material.dart';
import 'package:food_white/widgets/BottomBarIcon.dart';

class MyBottomBar extends StatelessWidget {
  const MyBottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white.withOpacity(0.5),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment:
          MediaQuery.of(context).orientation == Orientation.portrait ? MainAxisAlignment.spaceBetween : MainAxisAlignment.spaceAround,
          children: [
            bottomBarIcon(icon: Icons.calendar_today, text: "TODAY"),
            bottomBarIcon(icon: Icons.search, text: "DISCOVER"),
            bottomBarIcon(icon: Icons.shopping_bag_outlined, text: "BASKET"),
            bottomBarIcon(icon: Icons.bookmark_border, text: "BOOKMARK"),
            bottomBarIcon(icon: Icons.more_horiz, text: "MORE"),
          ],
        ),
      ),
    );
  }
}
