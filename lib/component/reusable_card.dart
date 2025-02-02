import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {


  ReusableCard({required this.color, required this.cardChild, this.onPress});

  final Color color;
  final Widget cardChild;
 final Function()? onPress; // Make onPress optional

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
    child: Container( margin: EdgeInsets.all(15.0),
    child: cardChild,
                  decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(10.0)),
                 
                ),
                );


  }
}