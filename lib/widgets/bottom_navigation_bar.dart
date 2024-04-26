import 'package:flutter/material.dart';
import '../theme/colors/light_colors.dart';

const items = [

];

class BEBottomNavigationBar extends StatefulWidget {
  const BEBottomNavigationBar ({
    super.key,
    items,
    required int currentIndex,
    Color? selectedItemColor,
    required void Function(int index) onTap,
  });

  @override
  State<BEBottomNavigationBar> createState() =>
      _BEBottomNavigationBarState();
  }

class _BEBottomNavigationBarState
    extends State<BEBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: LightColors.kGreen,
        onTap: _onItemTapped,
      ),
    );
  }
}
