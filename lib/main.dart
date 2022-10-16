import 'package:flutter/material.dart';
import 'package:dashboard_task/bottom_navigation_page.dart';
import 'package:dashboard_task/constants/app_constant.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstant.appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BottomNavigationPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
