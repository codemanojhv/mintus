import 'package:flutter/material.dart';


class SettingsPage extends StatelessWidget {
  const SettingsPage
({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(   
     
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
