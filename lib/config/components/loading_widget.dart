import 'package:bloc_part_two/config/colors/color.dart';
import 'package:flutter/material.dart';

class LoadingWidget extends StatefulWidget {
  final double size;
  const LoadingWidget({super.key, this.size = 10});

  @override
  State<LoadingWidget> createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.size,
      width: widget.size,
      child: CircularProgressIndicator(color: AppColors.greenColor),
    );
  }
}
