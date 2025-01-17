import 'package:flutter/material.dart';
import 'package:latihan_1/view/page/akun.dart';
import 'package:latihan_1/view/page/homedart.dart';
import 'package:latihan_1/view/page/riwayat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  
  final List<Widget> _pages = [
    const HomePage(),
    const Riwayat(), 
    const AkunPage() 
  ];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(15) , topRight: Radius.circular(15)),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onTap,
           backgroundColor: const Color.fromARGB(255, 73, 54, 40), 
          selectedItemColor: const Color.fromARGB(255, 171, 136, 109), 
          unselectedItemColor: const Color.fromARGB(255, 214, 192, 179), 
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'Riwayat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}

