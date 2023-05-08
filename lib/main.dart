// Import the material package from Flutter.
import 'package:flutter/material.dart';

// The main function starts the app.
void main() {
  // Run the app with MyApp as the root widget.
  runApp(MyApp());
}

// MyApp is a stateful widget.
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

// _MyAppState is the state of MyApp.
class _MyAppState extends State<MyApp> {
  // Define the initial index of the bottom navigation bar.
  int _currentIndex = 0;

  // Define the list of widgets to be shown in the bottom navigation bar.
  final List<Widget> _children = [    Home(),    Settings(),    Profile(),    Notifications(),  ];

  // This function is called when an item in the bottom navigation bar is tapped.
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  // The build method creates the widget tree.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bottom Navigation Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
        ),
      ),
      home: Scaffold(
        // Add an app bar with a title.
        appBar: AppBar(
          title: Text('Flutter Bottom Navigation Demo'),
        ),
        // Set the body of the scaffold to be the current widget in _children.
        body: _children[_currentIndex],
        // Add a bottom navigation bar with four items.
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
            ),
          ],
        ),
      ),
    );
  }
}

// Home is a stateless widget.
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Home Screen',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

// Settings is a stateless widget.
class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Settings Screen',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

// Profile is a stateless widget.
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Profile Screen',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

// Notifications is a stateless widget.
class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Notifications Screen',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
