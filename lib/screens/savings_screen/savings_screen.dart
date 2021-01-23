import 'package:flutter/material.dart';
import 'package:foodDeleveryApp/components/item_row.dart';

class Savings extends StatefulWidget {
  @override
  _SavingsState createState() => _SavingsState();
}

class _SavingsState extends State<Savings> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
            color: Colors.black,
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Text(
              'Soda',
              style: TextStyle(fontSize: 20),
            ),
            itemRow(),
            Text(
              'Chips',
              style: TextStyle(fontSize: 20),
            ),
            itemRow(),
            Text(
              'Bread',
              style: TextStyle(fontSize: 20),
            ),
            itemRow(),
            Text(
              'Drinks',
              style: TextStyle(fontSize: 20),
            ),
            itemRow(),
          ],
        ),
      ),
    );
  }
}