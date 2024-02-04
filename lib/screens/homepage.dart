

import 'package:flutter/material.dart';
import 'package:gusto_neumorphic/gusto_neumorphic.dart';
import 'package:iconly/iconly.dart';
import 'package:mintus/screens/notification.dart';

class Homepage1 extends StatefulWidget {
  const Homepage1({super.key});

  @override
  State<Homepage1> createState() => _Homepage1State();
}

class _Homepage1State extends State<Homepage1>  with SingleTickerProviderStateMixin  {
  final name = "Manoj";
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2), // Change the duration as needed
      vsync: this,
    );

   

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _controller.forward();
  }



  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async {
        // Add your logic here to navigate to 0th index
        return true;
      },
      child: Scaffold(
          body: Stack(
        children: [
          AnimatedOpacity(
            opacity: _animation.value,
            
            duration:   _controller.duration ?? const Duration(seconds: 1),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                   
                    const Color.fromARGB(48, 21, 4, 255), // Change this to your preferred shade of purple
                    const Color.fromARGB(0, 155, 39, 176).withOpacity(
                        0.0), // This will make the purple color gradually become transparent
                    Colors
                        .transparent, // This will make the color completely transparent at the bottom
                  ],
                ),
              ),
            ),
          ),
          Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20, 36, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(38, 189, 189, 189),
                          borderRadius: BorderRadius.circular(13),
                          border: Border.all(
                            color: const Color.fromARGB(122, 197, 197, 197),
                            width: 2,
                          ),
                        ),
                        child: const Icon(
                          IconlyLight.arrow_left_2,
                          size: 20,
                        ),
                      ),
                      const Text(
                        "HOME",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1E1E1E),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => const NotificationScreen()),
                                        );
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(38, 189, 189, 189),
                            borderRadius: BorderRadius.circular(13),
                            border: Border.all(
                              color: const Color.fromARGB(122, 197, 197, 197),
                              width: 2,
                            ),
                          ),
                          child: const Icon(
                            IconlyLight.notification,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                  child: SelectionArea(
                    child: RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          const TextSpan(
                            text: 'Hi ',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 97, 97, 97),
                            ),
                          ),
                          TextSpan(
                            text: "$name!",
                            style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 22, 22, 22),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  child: SelectionArea(
                    child: Text(
                      "Good morning ",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0,
                            0), // This will make the name text color red
                      ),
                    ),
                  ),
                ),
              ]),
        ],
      )),
    );
  }

  @override
  void dispose() {
   
    _controller.dispose();
    
    super.dispose();
  }
}
