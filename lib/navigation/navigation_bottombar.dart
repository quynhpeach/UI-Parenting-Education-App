import 'package:concuatui_appclone/pages/home_page/home_page.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class NavigationBottomBar extends StatefulWidget {
  const NavigationBottomBar({super.key});

  @override
  State<NavigationBottomBar> createState() => _NavigationBottomBarState();
}

class _NavigationBottomBarState extends State<NavigationBottomBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
      fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black12);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Text(
      'Index 1: Khám phá',
      style: optionStyle,
    ),
    Text(
      'Index 2: Cộng đồng',
      style: optionStyle,
    ),
    Text(
      'Index 2: Chuyên gia',
      style: optionStyle,
    ),
    Text(
      'Index 2: Cá nhân',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black12,
        unselectedLabelStyle:
            const TextStyle(color: Colors.black12, fontSize: 12),
        showUnselectedLabels: true,
        selectedFontSize: 12,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(EvaIcons.home),
            label: 'Trang chủ',
          ),
          BottomNavigationBarItem(
            icon: Icon(EvaIcons.compass),
            label: 'Khám phá',
          ),
          BottomNavigationBarItem(
            icon: Icon(EvaIcons.globe2),
            label: 'Cộng đồng',
          ),
          BottomNavigationBarItem(
            icon: Icon(EvaIcons.book),
            label: 'Chuyên gia',
          ),
          BottomNavigationBarItem(
            icon: Icon(EvaIcons.people),
            label: 'Cá nhân',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF77B05A),
        onTap: _onItemTapped,
      ),
    );
  }
}
