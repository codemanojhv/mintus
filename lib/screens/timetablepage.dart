import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mintus/utilities/cards.dart';
import 'drawer.dart';

class TimetablePage extends StatelessWidget {
  const TimetablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset('lib/icons/person.svg'),
          onPressed: () {
            Navigator.of(context).push(
              PageRouteBuilder(
                opaque: false,
                pageBuilder: (BuildContext context, _, __) {
                  return const FullScreenDrawer();
                },
                // transitionsBuilder: (context, animation, secondaryAnimation, child) {
                //   return SlideTransition(
                //     position: Tween<Offset>(
                //       begin: const Offset(-1, 0),
                //       end: Offset.zero,
                //     ).animate(animation),
                //     child: child,
                //   );
                // },
              ),
            );
          },
        ),
        centerTitle: true,
        backgroundColor:  Color.fromARGB(218, 2, 189, 27),
        title: const Text(
          'Home',
          style: TextStyle(fontSize: 18.0, color: Colors.white),
        ),
      ),
      backgroundColor:  Color.fromARGB(218, 2, 189, 27),
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 0.815),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Container(
                  color: Colors.transparent,
                  height: 10000,

                ),
              ), 
              const SizedBox(
                height: 200,
              ), 
                 
                     
                     
                   ],
                 ),
               ), 
                
      )
    ); 
  }
}
