import 'package:be_ai_mobile/screens/account.dart';
import 'package:be_ai_mobile/screens/camera.dart';
import 'package:be_ai_mobile/screens/diary.dart';
import 'package:be_ai_mobile/theme/colors/light_colors.dart';
import 'package:flutter/material.dart';
import '../widgets/bottom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var selectedScreenIndex = 0;
  var appTitle = 'Main';

  final pageController = PageController();

  void setAppTitle(int index) {
    setState(() {
      switch(index) {
        case 1:
          appTitle = 'Camera';
        case 2:
          appTitle = 'Account';
        default:
          appTitle = 'Diary';
      }
    });
  }

  void setScreen(int index) {
    setState(() => selectedScreenIndex = index);
    pageController.animateToPage(index, duration: const Duration(milliseconds: 200), curve: Curves.linear);
    setAppTitle(index);
  }

  void setPage(int index) {
    setState(() => selectedScreenIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
          backgroundColor: LightColors.kLightGreen,
        ),
        body: PageView(
          controller: pageController,
          onPageChanged: setPage,
          children: const [
            Diary(),
            Camera(),
            Account(),
          ],
        ),
        bottomNavigationBar: BEBottomNavigationBar(
          currentIndex: selectedScreenIndex,
          onTap: setScreen,
        ),
    );
  }
}
