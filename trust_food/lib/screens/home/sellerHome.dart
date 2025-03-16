import 'package:flutter/material.dart';
import 'package:trust_food/models/seller/seller.dart';
import 'package:trust_food/screens/profile/sellerProfileScreen.dart';

class SellerHomePage extends StatefulWidget {
  final Seller seller;

  SellerHomePage({required this.seller});

  @override
  _SellerHomePageState createState() => _SellerHomePageState(seller: seller);
}

enum SellerPage { dashboard, orders, profile }

class _SellerHomePageState extends State<SellerHomePage> {
  int _selectedIndex = 0;

  final Seller seller;

  _SellerHomePageState({required this.seller});

  static final List<Widget> _sellerPages = <Widget>[
    Center(child: Text('Seller Dashboard')),
    Center(child: Text('Orders')),
    Center(child: Text('Profile')),
  ];

  void _onItemTapped(int index) {
    if (_selectedIndex == index) return;

    setState(() {
      _selectedIndex = index;
    });

    final selectedPage = SellerPage.values[index];

    switch (selectedPage) {
      case SellerPage.dashboard:
        print("Dashboard");
        break;
      case SellerPage.orders:
        print("Orders");
        break;
      case SellerPage.profile:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SellerProfileScreen(seller: seller),
          ),
        );
        break;
    }
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
