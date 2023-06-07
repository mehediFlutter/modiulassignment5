import 'package:flutter/material.dart';
import 'package:modiul5/fromVi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  MySnackBar(context, message) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('App Bar'),
        actions: [
          IconButton(
            onPressed: () {
              MySnackBar(context, 'I am search');
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              MySnackBar(context, 'I am settings');
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: Center(child: Text('Welcome To Flutter')),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          MySnackBar(context, 'I am floating action bottom');
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
        ],
        onTap: (int index) {
          if (index == 0) {
            MySnackBar(context, 'I am Home ');
          }

          if (index == 1) {
            MySnackBar(context, 'I am Home ');
          }

          if (index == 2) {
            MySnackBar(context, 'I am Home ');
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: Text(
              'Welcome\nDrawer',
              textAlign: TextAlign.center,
            )),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.pop(context);
                MySnackBar(context, 'Home');
              },
            ),
            ListTile(
              title: Text('Person'),
              leading: Icon(Icons.person),
              onTap: () {
                Navigator.pop(context);
                MySnackBar(context, 'Person');
              },
            ),
            ListTile(
              title: Text('Email'),
              leading: Icon(Icons.email),
              onTap: () {
                Navigator.pop(context);
                MySnackBar(context, 'Email');
              },
            ),
            ListTile(
              title: Text('Help'),
              leading: Icon(Icons.help),
              onTap: () {
                Navigator.pop(context);
                MySnackBar(context, 'Help');
              },
            ),
          ],
        ),
      ),
    );
  }
}
