import 'package:flutter/material.dart';
import 'package:mintus/utilities/cards.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
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
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white54,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    height: 270,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedCard(
                              elevation: 5,
                              width: MediaQuery.of(context).size.width *
                                  0.4, // 40% of the screen width
                              height: MediaQuery.of(context).size.height *
                                  0.08, // 8% of the screen height
                              child: const Text(" awdwdd"),
                            ),
                            OutlinedCard(
                              width: MediaQuery.of(context).size.width *
                                  0.4, // 40% of the screen width
                              height: MediaQuery.of(context).size.height *
                                  0.08, // 8% of the screen height
                              child: const Text("data"),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedCard(
                              elevation: 5,
                              width: MediaQuery.of(context).size.width *
                                  0.4, // 40% of the screen width
                              height: MediaQuery.of(context).size.height *
                                  0.08, // 8% of the screen height
                              child: const Text(" awdwdd"),
                            ),
                            OutlinedCard(
                              width: MediaQuery.of(context).size.width *
                                  0.4, // 40% of the screen width
                              height: MediaQuery.of(context).size.height *
                                  0.08, // 8% of the screen height
                              child: const Text("data"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
