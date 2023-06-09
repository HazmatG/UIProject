import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/categories_widgets.dart';
import '../widgets/customappbar.dart';
import '../widgets/popular_widgets.dart';
import 'MainMenu.dart';
import 'basketpage.dart';

class OrderListPage extends StatefulWidget {
  const OrderListPage({Key? key}) : super(key: key);

  @override
  State<OrderListPage> createState() => _OrderListPageState();
}

class _OrderListPageState extends State<OrderListPage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: 0,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Главная'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined), label: 'Поиск'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket_outlined), label: 'Корзина'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: 'Аккаунт'),
        ],
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.black,), onPressed: () {
          Navigator.pop(context);
        }),
        centerTitle: true,
        toolbarHeight: 70,
        title: Text('Азиатская кухня', style: TextStyle(color: Colors.black)),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CircleAvatar(radius: 20, backgroundImage: AssetImage('lib/images/accountphoto.jpg')),
          )
        ],
      ),
      body: ListView(
        children: [
          CategoriesWidget(),
          PopularWidget()
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          print('Page 1');
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => MainMenu()));
          break;
        case 2:
          print('Page 2');
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => BasketPage()));
          break;
      }
    });
  }
}
