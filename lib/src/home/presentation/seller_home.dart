import 'package:flutter/material.dart';

class SellerHomePage extends StatefulWidget {
  static String route() => '/seller_home';

  const SellerHomePage({super.key});

  @override
  SellerHomePageState createState() => SellerHomePageState();
}

class SellerHomePageState extends State<SellerHomePage> {
  int _selectedIndex = 0;

  static final List<Widget> _sellerPages = <Widget>[
    Center(child: Text('Seller Dashboard')),
    Center(child: Text('Orders')),
    Center(child: Text('Profile')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Seller Dashboard")),
      body: _sellerPages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Orders',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
