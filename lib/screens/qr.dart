import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';



class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          
          const Text('ウエルカム') // Vertical text
              .textColor(Color(0xff44517F))
              .fontSize(28)
              .bold()
              .width(20),
              Styled.icon(Icons.qr_code_scanner,
              color: Colors.amber), // red circle,
          Styled.widget() // red circle
              .backgroundColor(const Color.fromARGB(255, 255, 0, 0))
              .constrained(width: 200, height: 200)
              .clipOval()
              .gestures(
                onTap: () => showBottomSheet(
                  context: context,
                  backgroundColor: const Color.fromARGB(0, 0, 0, 0),
                  builder: (BuildContext context) => const BottomSheet1(),
                ),
              ),
        ],
      ).padding(vertical: 80).alignment(Alignment.topCenter),
    );
  }
}



class BottomSheet1 extends StatelessWidget {
  const BottomSheet1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const Text('サインアップ') // button
            .textColor(Color.fromARGB(255, 255, 255, 255))
            .fontSize(24)
            .padding(vertical: 15, horizontal: 30)
            .decorated(
              color: Color.fromARGB(255, 121, 148, 255),
              borderRadius: BorderRadius.circular(35),
            )
            .gestures(onTap: () => Navigator.pop(context)),
        const Text('サインイン') // bottom description
            .fontSize(18)
            .textColor(Color.fromARGB(255, 255, 255, 255))
            .padding(vertical: 30),
      ],
    )
        .constrained(
          height: 280,
          width: MediaQuery.of(context).size.width,
        )
        .padding(all: 10)
        .backgroundBlur(20)
        .clipRect();
  }
}