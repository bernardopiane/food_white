import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyTopBar extends StatelessWidget {
  const MyTopBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Text("${DateFormat('EEEE, d MMMM').format(DateTime.now())}", style: TextStyle(color: Color(0xff0facb8), fontSize: 16)),
                  Text("Today's Menu", style: TextStyle(color: Colors.black, fontSize: 32, fontWeight: FontWeight.bold)),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
              Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(64),
                    color: Colors.red,
                    boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8, spreadRadius: 1)]),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
          SizedBox(height: 16),
          Divider(height: 1, color: Colors.grey.shade300),
        ],
      ),
    );
  }
}
