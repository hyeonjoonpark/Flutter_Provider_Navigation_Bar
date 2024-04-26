import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_nav_bar_ex/provider/bottom_navigation_provider.dart';
import 'package:provider_nav_bar_ex/provider/counter_provider.dart';
import 'package:provider_nav_bar_ex/ui/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Provider Navigation Bar Example',
      debugShowCheckedModeBanner: false,
      // MultiProvider를 통해 여러 Provider를 사용
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (BuildContext context) => CountProvider(),
          ),
          ChangeNotifierProvider(
            create: (BuildContext context) => BottomNavigationProvider(),
          ),
        ],
        child: Home(),
      ),
    );
  }
}
