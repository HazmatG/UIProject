import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var _primcolor = Color.fromRGBO(111, 78, 55, 1);

    String _name = 'Guest';
    String _address = 'Not Specified';

    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 65,
        child: BottomNavigationBar(
          backgroundColor: _primcolor,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.coffee), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket_outlined), label: ''),
          ],
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.person_outline),
            onPressed: () {},
          ),
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          ),
        ),
        title: Text('Profile'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: _primcolor,
      ),
      body: ListView(
        children: [
          SizedBox(height: 20),
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage('assets/images/iconpic.png'),
                  fit: BoxFit.fitHeight),
            ),
          ),
          SizedBox(height: 10),
          Center(
              child: Text('$_name',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))),
          SizedBox(height: 30),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Address:',
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 150),
                child: Text(
                  '$_address',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Phone number:',
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Text(
                  '+996 555 000 33',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Email:',
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 85),
                child: Text(
                  'coffeefan21@gmail.com',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          TextButton(
            onPressed: () {},
            child: Text(
              'Terms of service',
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                  },
                  child: Text('EDIT PROFILE'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _primcolor,
                    padding: EdgeInsets.symmetric(horizontal: 55, vertical: 15),
                  )),
              SizedBox(width: 8),
              ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Are you sure?"),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('NO')),
                              TextButton(
                                  onPressed: () {
                                  },
                                  child: Text('QUIT'))
                            ],
                          );
                        });
                  },
                  child: Text('QUIT'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _primcolor,
                    padding: EdgeInsets.symmetric(horizontal: 55, vertical: 15),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
