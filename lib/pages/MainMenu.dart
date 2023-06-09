import 'package:flutter/material.dart';

import '../widgets/customappbar.dart';
import 'basketpage.dart';
import 'order_list_page.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
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
      body: ListView(
        children: [
          CustomAppBar(),
          MenuCard(title: 'Пекарни и кондитерские', image: 'lib/images/frame579.png'),
          MenuCard(title: 'Фастфуд', image: 'lib/images/frame580.png'),
          MenuCard(title: 'Азиатская кухня', image: 'lib/images/frame581.png'),
          MenuCard(title: 'Супы', image: 'lib/images/frame582.png'),
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

class MenuCard extends StatelessWidget {
  MenuCard({
    super.key,
  required this.title,
  required this.image
  });

  String title;
  String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => OrderListPage()));
        },
        child: Stack(
          alignment: Alignment.center,
            children: [
          Image.asset(image),
          Positioned.fill(
            left: 30,
          top: 20,
          child: Align(
            alignment: Alignment.topLeft,
              child: Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),)))
        ]),
      ),
    );
  }
}
