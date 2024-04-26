import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_nav_bar_ex/provider/bottom_navigation_provider.dart';
import 'package:provider_nav_bar_ex/ui/widget/bottom_navigation_widget.dart';
import 'package:provider_nav_bar_ex/ui/widget/navigation_bar.dart';

class Home extends StatelessWidget {
  Home({super.key});

  late BottomNavigationProvider bottomNavigationProvider;
  @override
  Widget build(BuildContext context) {
    bottomNavigationProvider = Provider.of<BottomNavigationProvider>(context);

    return Scaffold(
      body: navigationBody(bottomNavigationProvider),
      bottomNavigationBar: bottomNavigationBarWidget(bottomNavigationProvider),
    );
  }
}
