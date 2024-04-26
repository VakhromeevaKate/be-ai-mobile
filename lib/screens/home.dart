import 'package:be_ai_mobile/screens/account.dart';
import 'package:be_ai_mobile/screens/camera.dart';
import 'package:be_ai_mobile/screens/diary.dart';
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

  Widget getBody() {
    switch(selectedScreenIndex) {
      case 1:
        return const Camera();
      case 2:
        return const Account();
      default:
        return const Diary();
    }
  }

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
  }

  void setData(int index) {
    setAppTitle(index);
    setScreen(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: getBody(),
        bottomNavigationBar: BEBottomNavigationBar(
          currentIndex: selectedScreenIndex,
          onTap: setScreen,
        ),
    );
  }
}
