import 'package:flutter/material.dart';
import 'package:module_b_first/features/discover/DiscoverPage.dart';
import 'package:module_b_first/features/home/HomePage.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 1;
  List<Widget> pages = [ DiscoverPage(), HomePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
              labelTextStyle: MaterialStatePropertyAll(
                  TextStyle(
                      fontSize: 15,
                      color: Colors.grey
                  )
              )
          ),
          child: NavigationBar(
            indicatorColor: Colors.white,
            backgroundColor: Colors.white,
            selectedIndex: _currentIndex,
            onDestinationSelected: (index) {
              setState(() {
                _currentIndex = index;
              });
              print(_currentIndex);
            },
            destinations: [
              NavigationDestination
                (icon: Icon(Icons.language,
                  color: Colors.grey), label: _currentIndex == 0 ? "" : "discover"
              ),
              NavigationDestination(
                  icon: Icon(Icons.home,
                      color: Colors.grey), label: _currentIndex == 1 ? "" : "home"
              )
            ],
          ),
        )

    );
  }
}
