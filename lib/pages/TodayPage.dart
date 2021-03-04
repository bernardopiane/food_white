import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_white/pages/CartPage.dart';
import 'package:food_white/sampleData.dart';
import 'package:food_white/widgets/MyBottomBar.dart';
import 'package:food_white/widgets/MyTopBar.dart';
import 'package:intl/intl.dart';

class TodayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  MyTopBar(),
                  FeaturedItem(
                    title: items.elementAt(0).title,
                    category: items.elementAt(0).category,
                    description: items.elementAt(0).description,
                    image: items.elementAt(0).image,
                  ),
                  FeaturedItem(
                    title: items.elementAt(1).title,
                    category: items.elementAt(1).category,
                    description: items.elementAt(1).description,
                    image: items.elementAt(1).image,
                  ),
                ],
              ),
            ),
            MyBottomBar()
          ],
        ),
      ),
    );
  }
}

class FeaturedItem extends ConsumerWidget {
  const FeaturedItem({
    Key key,
    this.title,
    this.category,
    this.description,
    this.image,
  }) : super(key: key);

  final String title;
  final String category;
  final String description;
  final String image;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final item = watch(cartListProvider.state);
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: GestureDetector(
          onTap: (){
            item.add(Item(title, category, description, image));
          },
          child: Stack(
            children: [
              AspectRatio(
                aspectRatio: MediaQuery.of(context).orientation == Orientation.portrait ? 4 / 5 : 4 / 1.5,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: ColorFiltered(
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                    colorFilter: ColorFilter.mode(Colors.black26, BlendMode.darken),
                  ),
                ),
              ),
              Positioned(
                  left: 12,
                  top: 24,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        category,
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      Text(
                        title,
                        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ],
                  )),
              Positioned(
                  left: 12,
                  bottom: 24,
                  child: Text(
                    description,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
