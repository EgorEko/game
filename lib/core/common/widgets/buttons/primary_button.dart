import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.asset,
    required this.width,
    required this.height,
    required this.borderColor,
    required this.onPressed,
  });

  final String asset;
  final double width;
  final double height;
  final Color borderColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: IconButton(onPressed: () => onPressed(), icon: Image.asset(asset)),
    );
  }
}
