import 'package:flutter/material.dart';
import 'package:food_white/widgets/MyTopBar.dart';

class BreakfastPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            MyTopBar(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                // color: Colors.red,
                height: 240,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 10),
                    HorizontalItem(),
                    HorizontalItem(),
                    HorizontalItem(),
                    HorizontalItem(),
                    SizedBox(width: 10),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HorizontalItem extends StatelessWidget {
  const HorizontalItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            child: Image.asset(
              "images/Image.png",
              width: 272,
              height: 156,
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          Container(
            width: 256,
            child: Text(
              "From the best corn of US",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Container(
            width: 256,
            child: Text(
              "Delicious Cornflake and Milk",
              style: TextStyle(fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}
