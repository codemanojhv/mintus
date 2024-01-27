import 'package:flutter/material.dart';





class ElevatedCard extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;
   final double elevation;
  const ElevatedCard({Key? key, required this.elevation, required this.child, required this.height , required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
      
      color: Colors.white,
      elevation: elevation,
        child: SizedBox(
          width: width,
          height: height,
          child: Center(child: child),
        ),
      
    );
  }
}

class FilledCard extends StatelessWidget {
    final Widget child;
  final double height;
  final double width;
 

  const FilledCard({Key? key, required this.child, required this.height , required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
     
      
      color: Theme.of(context).colorScheme.surfaceVariant,
      child: SizedBox(
        width: width,
        height: height,
        child: Center(child: child),
      ),
    );
  }
}

class OutlinedCard
  

 extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;

  

  const OutlinedCard
  ({Key? key, required this.child, required this.height , required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
     
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Theme.of(context).colorScheme.outline,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child:  SizedBox(
        width: width,
        height: height,
        child: Center(child: child),
      ),
    );
  }
}
