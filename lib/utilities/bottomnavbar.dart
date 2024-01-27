// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mintus/screens/homepage.dart';
import 'package:mintus/screens/settingspage.dart';
import 'package:mintus/screens/timetablepage.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key); 

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  void onTabTapped(int index) {
    _pageController.jumpToPage(index);
  }

  void onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async {
        if (_currentIndex != 0) {
          _pageController.jumpToPage(0);
          return false;
        }
        return true;
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        
        body: PageView(
          controller: _pageController,
          onPageChanged: onPageChanged,
          physics: const NeverScrollableScrollPhysics(), 
          children: const <Widget>[
            Homepage1(),
            SettingsPage(),
            TimetablePage(),
          ],
        ),
        bottomNavigationBar: CustomBottomNavBar(
          currentIndex: _currentIndex,
          onTap: onTabTapped,
        ),
      ),
    );   
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavBar({super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    // Define your colors here
    final List<Color> colors = [
     const Color.fromARGB(117, 25, 118, 194),
     const Color.fromARGB(179, 47, 129, 51), 
     const Color.fromARGB(158, 151, 105, 18)
     ];

    return BottomAppBar(
      height: 60  , 
      color: const Color.fromARGB(253, 2, 192, 88),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(3, (index) {
          return GestureDetector(
            onTap: () => onTap(index), 
            child: Container( 
              padding: const EdgeInsets.fromLTRB(28,5,28,5),
              decoration: BoxDecoration(
                color: index == currentIndex ? colors[index] : Colors.transparent,
                shape: BoxShape.rectangle, 
                borderRadius: BorderRadius.circular(100),   
              ),
              
              child: 
              SvgPicture.asset(
                'lib/icons/${index == currentIndex ? 'active_' : ''}${['home', 'settings', 'calander'][index]}.svg',
           
              ),
            ), 
          );
        }),
      ), 
    );
  } 
} 