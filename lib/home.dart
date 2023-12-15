import 'package:flutter/material.dart';
import 'datadosen.dart';
import 'dataruangan.dart';
import 'datamahasiswa.dart';
import 'datamatkul.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    const DataMahasiswa(),
    const DataDosen(),
    const DataRuangan(),
    const DataMatkul(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color.fromARGB(255, 0, 60, 255),
        selectedItemColor: Color.fromARGB(255, 255, 166, 0),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Mahasiswa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Dosen',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.class_),
            label: 'Ruangan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Mata Kuliah',
          ),
        ],
      ),
    );
  }
}
