import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/common/utils/extensions.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Container(
        constraints: BoxConstraints(maxHeight: context.getHeight * 0.3),
        decoration: BoxDecoration(
          color: AppColors.bottomSheetColor,
          borderRadius: BorderRadius.all(Radius.circular(64.r)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 64.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 64.w),
                child: Text(
                  'Please make your choice'.toUpperCase(),
                  style: AppTextStyles.bottomSheetTextStyle,
                ),
              ),
              16.verticalSpace,
              Divider(color: AppColors.bottomSheetDividerColor),
              32.verticalSpace,
              Container(
                width: 810.w,
                height: 200.h,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.r)),
                ),
                child: Column(
                  children: [
                    Spacer(),
                    Text(
                      'make a photo'.toUpperCase(),
                      style: AppTextStyles.bottomSheetTextStyle.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                    8.verticalSpace,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 64.w),
                      child: Divider(color: AppColors.black, thickness: 0),
                    ),
                    8.verticalSpace,
                    Text(
                      'choose photo'.toUpperCase(),
                      style: AppTextStyles.bottomSheetTextStyle.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              32.verticalSpace,
              InkWell(
                onTap: () => context.pop(),
                child: Container(
                  width: 288.w,
                  height: 83.h,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20.r)),
                  ),
                  child: Center(
                    child: Text(
                      'cancel'.toUpperCase(),
                      style: AppTextStyles.bottomSheetTextStyle.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
