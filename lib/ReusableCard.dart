import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colours;
  final Widget cardChild;
 final void  Function() onPress;// or final VoidCallback onPress; both are same

  ReusableCard(this.colours, Widget cardChild, this.onPress)
      : cardChild = cardChild;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          color: colours,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
