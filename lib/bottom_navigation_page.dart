import 'package:flutter/material.dart';
import 'package:dashboard_task/constants/app_constant.dart';
import 'package:dashboard_task/constants/palette.dart';
import 'package:dashboard_task/pages/bookmark_page.dart';
import 'package:dashboard_task/pages/home_page.dart';
import 'package:dashboard_task/pages/profile_page.dart';
import 'package:dashboard_task/pages/search_page.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int _selectedIndex = 0;
  final List<Widget> _pages = const [
    HomePage(),
    BookmarkPage(),
    SearchPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Palette.blue,
        unselectedItemColor: Palette.grey,
        unselectedLabelStyle: TextStyle(color: Palette.blue),
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        onTap: onItemTBottomNavigationPageed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: AppConstant.home,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: AppConstant.bookmark,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: AppConstant.search,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: AppConstant.profile,
          ),
        ],
      ),
    );
  }

  void onItemTBottomNavigationPageed(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
