import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_text.dart';
import '../misc/app_colors.dart';

class AppButtons extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  final Color boderColor;
  String? text;
  IconData? icon;
  bool? isIcon;
  double size;
  AppButtons(
      {super.key,
      this.isIcon = false,
      this.text = 'Hi',
      this.icon,
      required this.color,
      required this.backgroundColor,
      required this.boderColor,
      required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          border: Border.all(color: boderColor, width: 1),
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor),
      child: isIcon == false
          ? Center(child: AppText(text: text!, color: color))
          : Center(
              child: Icon(
                icon,
                color: color,
              ),
            ),
    );
  }
}
