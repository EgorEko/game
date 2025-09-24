import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/common/utils/extensions.dart';
import '../../../core/common/widgets/background_widget.dart';
import '../../../core/common/widgets/buttons/primary_button.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../gen/assets.gen.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        asset: Assets.images.backgrounds.backgroundMenu.path,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 32.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PrimaryButton(
                      asset: Assets.images.buttons.back.path,
                      width: 208.w,
                      height: 208.h,
                      borderColor: AppColors.borderPrimaryColor,
                      onPressed: () => context.pop(),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 50.h),
                  child: Container(
                    height: context.getHeight * 0.7,
                    width: context.getWidth * 0.865,
                    decoration: BoxDecoration(
                      color: AppColors.transparentObjectColor,
                      borderRadius: BorderRadius.all(Radius.circular(20.r)),
                      border: Border.all(
                        color: AppColors.borderTransparentObjectColor,
                        width: 5.w,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 110.w,
                        vertical: 100.h,
                      ),
                      child: Column(
                        children: [
                          Text(
                            textAlign: TextAlign.center,
                            'privacy\npolicy'.toUpperCase(),
                            style: AppTextStyles.loadingPrimaryTextStyle
                                .copyWith(color: AppColors.white),
                          ),
                          Spacer(),
                          Text(
                            'text'.toUpperCase(),
                            style: AppTextStyles.primaryTextStyle.copyWith(
                              color: AppColors.white,
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
