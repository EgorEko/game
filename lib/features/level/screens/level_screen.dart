import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/common/utils/extensions.dart';
import '../../../core/common/widgets/background_widget.dart';
import '../../../core/common/widgets/buttons/numbered_button.dart';
import '../../../core/common/widgets/buttons/primary_button.dart';
import '../../../core/common/widgets/coin_count_widget.dart';
import '../../../core/router/app_routes.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../gen/assets.gen.dart';

class LevelScreen extends StatelessWidget {
  const LevelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        asset: Assets.images.backgrounds.backgroundMenu.path,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 36.w, vertical: 32.h),
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
                    CoinCountWidget(),
                  ],
                ),
                Text(
                  'change level'.toUpperCase(),
                  style: AppTextStyles.loadingPrimaryTextStyle.copyWith(
                    color: AppColors.white,
                  ),
                ),
                SizedBox(
                  height: context.getHeight < 700
                      ? context.getHeight * 0.11
                      : context.getHeight * 0.15,
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 3,
                    children: List.generate(9, (index) {
                      return Center(
                        child: NumberedButton(
                          asset: Assets.images.buttons.disabledButton.path,
                          title: '${index + 1}',
                          width: 270.w,
                          height: 274.h,
                          borderColor: Colors.transparent,
                          onPressed: () {
                            context.push(AppRoutes.game.path);
                          },
                        ),
                      );
                    }),
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
