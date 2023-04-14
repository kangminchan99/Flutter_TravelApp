import 'package:flutter/material.dart';
import 'package:travel_app/misc/app_colors.dart';

class ResponsiveBtn extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ResponsiveBtn({this.width, this.isResponsive = false, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColors.mainColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/button-one.png'),
        ],
      ),
    );
  }
}
