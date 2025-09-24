import 'package:flutter/material.dart';

import '../../../theme/app_colors.dart';
import '../../../theme/app_text_styles.dart';

class NumberedButton extends StatelessWidget {
  const NumberedButton({
    super.key,
    required this.asset,
    required this.width,
    required this.height,
    required this.borderColor,
    required this.onPressed,
    required this.title,
  });

  final String asset;
  final double width;
  final double height;
  final Color borderColor;
  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          IconButton(onPressed: onPressed, icon: Image.asset(asset)),
          Text(
            title,
            style: AppTextStyles.loadingPrimaryTextStyle.copyWith(
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
