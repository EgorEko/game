import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/common/utils/extensions.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../gen/assets.gen.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.w),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 12.h),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.borderTransparentObjectColor,
                borderRadius: BorderRadius.all(Radius.circular(20.r)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 32.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: context.getWidth * 0.01),
                    Text(
                      'username'.toUpperCase(),
                      style: AppTextStyles.menuButtonsTextStyle,
                    ),
                    Text(
                      '0000'.toUpperCase(),
                      style: AppTextStyles.menuButtonsTextStyle,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Assets.images.buttons.activeButton.image(width: 144.w, height: 146.h),
        ],
      ),
    );
  }
}
