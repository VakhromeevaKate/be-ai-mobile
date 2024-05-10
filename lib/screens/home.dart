import 'package:be_ai_mobile/screens/inner/account.dart';
import 'package:be_ai_mobile/screens/inner/camera.dart';
import 'package:be_ai_mobile/screens/inner/diary.dart';
import 'package:be_ai_mobile/theme/colors/light_colors.dart';
import 'package:flutter/material.dart';

import '../generated/l10n.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var selectedScreenIndex = 0;
  var appTitle = 'Diary';

  final pageController = PageController();

  void setAppTitle(int index, BuildContext context) {
    setState(() {
      switch(index) {
        case 1:
          appTitle = S.of(context).Camera;
        case 2:
          appTitle = S.of(context).Account;
        default:
          appTitle = S.of(context).Diary;
      }
    });
  }

  void setScreen(int index, BuildContext context) {
    setState(() => selectedScreenIndex = index);
    pageController.animateToPage(index, duration: const Duration(milliseconds: 200), curve: Curves.linear);
    setAppTitle(index, context);
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
            items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: const Icon(Icons.book),
              label: S.of(context).Diary,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.camera),
              label: S.of(context).Camera,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.person),
              label: S.of(context).Account,
            )],
            currentIndex: selectedScreenIndex,
            selectedItemColor: LightColors.kGreen,
            onTap: (i) => setScreen(i, context),
            backgroundColor: LightColors.kLightGreen,
            )
    );
  }
}
