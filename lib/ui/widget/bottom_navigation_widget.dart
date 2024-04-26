import 'package:flutter/material.dart';
import 'package:provider_nav_bar_ex/provider/bottom_navigation_provider.dart';

Widget bottomNavigationBarWidget(BottomNavigationProvider provider) {
  return BottomNavigationBar(
    items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.people,
        ),
        label: 'User',
      ),
    ],
    onTap: (index) {
      provider.updateCurrentPage(index);
    },
    currentIndex: provider.currentPage, // current page
    selectedItemColor: Colors.lightBlue,
  );
}
