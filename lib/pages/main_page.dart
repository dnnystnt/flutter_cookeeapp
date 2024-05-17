import 'package:flutter/material.dart';
import 'package:flutter_cookeeapp/pages/home_page.dart';
import 'package:flutter_cookeeapp/shared/theme.dart';
import 'package:flutter_cookeeapp/widgets/custom_bottom_navigation_item.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Bikin Widget contentInside()
    Widget contentInside() {
      return HomePage();
    }

    // Bikin NavigationBar nya
    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
            bottom: 32,
            left: 32,
            right: 32,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.8),
                spreadRadius: 2,
                blurRadius: 10,
                offset: const Offset(4, 4),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNavigationItem(
                imgURL: 'assets/icon_home.png',
                isSelected: true,
              ),
              CustomBottomNavigationItem(
                imgURL: 'assets/icon_search.png',
                isSelected: false,
              ),
              CustomBottomNavigationItem(
                imgURL: 'assets/icon_wallet.png',
                isSelected: false,
              ),
              CustomBottomNavigationItem(
                imgURL: 'assets/icon_activity.png',
                isSelected: false,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          contentInside(),
          customBottomNavigation(),
        ],
      ),
    );
  }
}
