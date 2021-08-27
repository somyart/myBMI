import 'package:flutter/material.dart';
import 'package:mybmi/Constant.dart';

class IconDatas extends StatelessWidget {
  final IconData cardIcon;
  final String cardText;
  IconDatas(this.cardIcon, this.cardText);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardIcon,
          size: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          cardText,
          style:cardTextstyle,
        )
      ],
    );
  }
}
