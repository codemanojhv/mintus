// ignore_for_file: deprecated_member_use

import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:light/light.dart';
import 'package:mintus/screens/qr.dart';

import '../screens/homepage.dart';
import '../screens/settingspage.dart';



enum _SelectedTab { home, favorite, add, search, person }


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
    onWillPop: () async {
      if (_SelectedTab.values.indexOf(_selectedTab) != 0) {
        setState(() {
          _selectedTab = _SelectedTab.home;
        });
        return false;
      }
      return true;
    },
    child: Scaffold(
      backgroundColor: Colors.black,
      extendBody: true,
     body: IndexedStack(
        index: _SelectedTab.values.indexOf(_selectedTab),
        children:   <Widget>[
         const  Homepage1(),
          const SettingsPage(),
        
          const SettingsPage(),
          const Homepage1(),
         Home(),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: CrystalNavigationBar(
         
          currentIndex: _SelectedTab.values.indexOf(_selectedTab),
          height: 10,

          unselectedItemColor: const Color.fromARGB(179, 0, 0, 0),
          backgroundColor: const Color.fromARGB(255, 145, 145, 145).withOpacity(0.1),
          
          outlineBorderColor:   const Color.fromARGB(122, 197, 197, 197),
          
          enableFloatingNavBar: true,
          onTap: _handleIndexChanged,
          items: [
            /// Home
            CrystalNavigationBarItem(
              icon: IconlyBold.home,
              unselectedIcon: IconlyLight.home,
              selectedColor: const Color.fromARGB(255, 0, 0, 0),
            ),

            /// Favourite
            CrystalNavigationBarItem(
              icon: IconlyBold.category,
              unselectedIcon: IconlyLight.category,
              selectedColor: Colors.red,
            ),

            /// Add
            CrystalNavigationBarItem(
              icon: IconlyBold.calendar, 
              unselectedIcon: IconlyLight.calendar,
              selectedColor: const Color.fromARGB(255, 43, 40, 255),
            ),

            /// Search
            CrystalNavigationBarItem(
                icon: IconlyBold.star,
                unselectedIcon: IconlyLight.star,
                selectedColor: const Color.fromARGB(255, 199, 153, 1)),

            /// Profile
            CrystalNavigationBarItem(

              icon: Icons.qr_code_2,
              unselectedIcon: Icons.qr_code_scanner_outlined,
              selectedColor: const Color.fromARGB(255, 120, 0, 131),
            ),

           
          ],
        ),
      ),
    ),
    );
  }
}