import 'package:bloc_part_two/config/colors/color.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final double height;
  final double width;
  final VoidCallback onPress;
  const RoundButton({
    super.key,
    required this.title,
    required this.onPress,
    this.height = 30,
    this.width = 30,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: AppColors.greenColor.withOpacity(.2),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(child: Text(title)),
      ),
    );
  }
}
