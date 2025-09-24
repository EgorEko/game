import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'primary_button.dart';
import '../../../theme/app_colors.dart';
import '../../../../gen/assets.gen.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.text,
    required this.style,
    required this.onTap,
    required this.width,
    required this.height,
  });

  final String text;
  final TextStyle style;
  final VoidCallback onTap;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          PrimaryButton(
            asset: Assets.images.buttons.primaryButton.path,
            width: width,
            height: height,
            borderColor: AppColors.borderSecondaryColor,
            onPressed: () {},
          ),
          Text(text.toUpperCase(), style: style, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
