import 'package:flutter/material.dart';
import 'package:franga_agent/core/utils/colors_util.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final Widget icon;

  const CustomButton({super.key, required this.onTap, required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child:Container(
        height: 80,
        width: 80,
        decoration: const BoxDecoration(
          color: ColorsUtil.KcircleGreen,
          borderRadius: BorderRadius.all(Radius.circular(60)),
        ),
        child: Center(
          child: icon
        ) ,
      ),
    );
  }
}

