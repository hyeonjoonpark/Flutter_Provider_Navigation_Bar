import 'package:flutter/material.dart';
import 'package:provider_nav_bar_ex/provider/bottom_navigation_provider.dart';

Widget navigationBody(BottomNavigationProvider provider) {
  // 페이지별로 다른 화면을 보여줌
  return provider.currentPage == 0
      ? const SafeArea(
          child: Center(
            child: Text("Home Page"),
          ),
        )
      : provider.currentPage == 1
          ? const SafeArea(
              child: Center(
                child: Text("User Page"),
              ),
            )
          : Container();
}
