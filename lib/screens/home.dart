import 'package:be_ai_mobile/screens/inner/account.dart';
import 'package:be_ai_mobile/screens/inner/camera.dart';
import 'package:be_ai_mobile/screens/inner/diary.dart';
import 'package:be_ai_mobile/theme/colors/light_colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var selectedScreenIndex = 0;
  var appTitle = 'Diary';

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
          onPageChanged: (value) => setPage(value),
          children: const [
            Diary(),
            Camera(),
            Account(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Diary',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              label: 'Camera',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Account',
            )],
            currentIndex: selectedScreenIndex,
            selectedItemColor: LightColors.kGreen,
            onTap: setScreen,
            backgroundColor: LightColors.kLightGreen,
            )
    );
  }
}
