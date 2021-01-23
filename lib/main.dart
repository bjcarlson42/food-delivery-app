import 'package:flutter/material.dart';
import 'package:foodDeleveryApp/screens/more_screen/more_screen.dart';
import 'package:foodDeleveryApp/screens/savings_screen/savings_screen.dart';
import 'package:foodDeleveryApp/screens/shop_screen/shop_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation',
      home: Navigation(),
    );
  }
}

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = [Shop(), Savings(), More()];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shop,
              ),
              label: 'Shop'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.tag,
              ),
              label: 'Savings'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.more,
              ),
              label: 'More'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        elevation: 2.0,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
      ),
    );
  }
}