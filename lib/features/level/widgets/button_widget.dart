import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/common/widgets/buttons/primary_button.dart';
import '../../../core/theme/app_colors.dart';
import '../../../gen/assets.gen.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.text,
    required this.style,
    required this.onTap,
  });

  final String text;
  final TextStyle style;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          PrimaryButton(
            asset: Assets.images.buttons.primaryButton.path,
            width: 400.w,
            height: 182.h,
            borderColor: AppColors.borderSecondaryColor,
            onPressed: () {},
          ),
          Text(text.toUpperCase(), style: style, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
