import 'package:flutter/material.dart';
import 'package:foodDeleveryApp/models/item.dart';

Widget itemRow() {
  return Container(
    width: 200,
    height: 200,
    child: ListView(
      children: getAllItems(),
      scrollDirection: Axis.horizontal,
    ),
  );
}

List<Item> getItems() {
  List<Item> items = [];
  for (int i = 0; i < 7; i++) {
    AssetImage image = AssetImage("lib/assets/coke.jpg");
    Item myItem = Item('Coke', image, .75);
    items.add(myItem);
  }
  return items;
}

List<Widget> getAllItems() {
  List<Item> items = getItems();
  List<Widget> cards = [];
  for (Item i in items) {
    cards.add(_buildItemCard(i));
  }
  return cards;
}

Widget _buildItemCard(Item item) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      child: Container(
        width: 150,
        child: Column(
          children: [
            Image(
              image: item.image,
              width: 100,
            ),
            Expanded(
              child: Container(
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        item.name,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        "\$" + item.price.toString(),
                        style: TextStyle(color: Colors.white60, fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
