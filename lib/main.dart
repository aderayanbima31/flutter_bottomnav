import 'package:flutter/material.dart';

void main() => runApp(new MyApp());


class MyApp extends StatelessWidget{
  static const String _title = 'Flutter Bottom Navigation';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: _title,
      home: Belajar(),
    );
  }
}

class Belajar extends StatefulWidget {
  @override
  _BelajarState createState() => _BelajarState();
}


class _BelajarState extends State<Belajar> {

  int _selectedIndex = 0;

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),



  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BottomNavigationBar Sample'),
        ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const<BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              title: Text('Home'),
            ),
      ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
