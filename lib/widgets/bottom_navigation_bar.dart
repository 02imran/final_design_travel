import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:final_design_travel/maps/google_maps.dart';
import 'package:final_design_travel/profile/main_profile_screen.dart';
import 'package:final_design_travel/profile/setting_profile.dart';
import 'package:final_design_travel/screens/home_screen.dart';
import 'package:flutter/material.dart';

class NewNavigationBar extends StatefulWidget {
  @override
  _NewNavigationBarState createState() => _NewNavigationBarState();
}

class _NewNavigationBarState extends State<NewNavigationBar> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    PageController _pageController;

    @override
    void initState() {
      super.initState();
      _pageController = PageController();
    }

    @override
    void dispose() {
      _pageController.dispose();
      super.dispose();
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _currentIndex = index);
            },
            children: [
              HomeScreen(),
              MainProfileScreen(),
              GoogleMaps(),
              SettingsPage(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _currentIndex,
          onItemSelected: (index) {
            setState(() => _currentIndex = index);
            _pageController.jumpToPage(index);
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(title: Text('Item One'), icon: Icon(Icons.home)),
            BottomNavyBarItem(title: Text('Item One'), icon: Icon(Icons.apps)),
            BottomNavyBarItem(
                title: Text('Item One'), icon: Icon(Icons.chat_bubble)),
            BottomNavyBarItem(
                title: Text('Item One'), icon: Icon(Icons.settings)),
          ],
        ),
      );
    }
  }
}
