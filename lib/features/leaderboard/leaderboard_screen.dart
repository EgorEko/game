import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/common/utils/extensions.dart';
import '../../../core/common/widgets/background_widget.dart';
import '../../../core/common/widgets/buttons/primary_button.dart';
import '../../../core/theme/app_colors.dart';
import '../../../gen/assets.gen.dart';
import '../../core/theme/app_text_styles.dart';
import 'widgets/item_widget.dart';

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        asset: Assets.images.backgrounds.backgroundMenu.path,
        child: SafeArea(
          child: SingleChildScrollView(
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
                    padding: EdgeInsets.symmetric(vertical: 120.h),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.transparentObjectColor,
                        borderRadius: BorderRadius.all(Radius.circular(20.r)),
                        border: Border.all(
                          color: AppColors.borderTransparentObjectColor,
                          width: 5.w,
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'leaderboard'.toUpperCase(),
                            style: AppTextStyles.loadingPrimaryTextStyle
                                .copyWith(color: AppColors.white),
                          ),
                          SizedBox(
                            height: context.getHeight * 0.65,
                            child: ListView.builder(
                              itemBuilder: (context, index) {
                                return ItemWidget();
                              },
                              itemCount: 9,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
