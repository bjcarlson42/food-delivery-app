import 'package:flutter/material.dart';
import 'package:foodDeleveryApp/components/item_row.dart';

class Shop extends StatefulWidget {
  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
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
            Text('Hello, Ben,'),
            Text('You have 150 points...'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.place),
                        Text('Delivery to'),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text('90255'),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.alarm),
                        Text('Within 30 min'),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text('Delivery date: Today'),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ),
                ],
              ),
            ),
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
