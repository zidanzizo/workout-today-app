import 'package:flutter/material.dart';
import 'package:workout_today_app/presentation/page/home_page.dart';
import 'package:workout_today_app/shared/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomePage(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(
          fontWeight: semiBold,
          fontSize: 12,
        ),
        selectedItemColor: primaryColor,
        unselectedItemColor: blackColor,
        elevation: 0,
        backgroundColor: whiteColor,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Image.asset(
                'assets/icon_trend_up.png',
                color: currentIndex == 0 ? primaryColor : blackColor,
              ),
            ),
            label: 'Progress',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Image.asset(
                'assets/icon_award.png',
                color: currentIndex == 1 ? primaryColor : blackColor,
              ),
            ),
            label: 'Rewards',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Image.asset(
                'assets/icon_credit_card.png',
                color: currentIndex == 2 ? primaryColor : blackColor,
              ),
            ),
            label: 'Payment',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Image.asset(
                'assets/icon_setting.png',
                color: currentIndex == 3 ? primaryColor : blackColor,
              ),
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
