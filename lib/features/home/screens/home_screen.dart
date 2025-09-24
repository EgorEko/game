import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/common/utils/extensions.dart';
import '../../../core/common/widgets/background_widget.dart';
import '../../../core/common/widgets/buttons/primary_button.dart';
import '../../../core/router/app_routes.dart';
import '../../../core/theme/app_colors.dart';
import '../../../gen/assets.gen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        asset: Assets.images.backgrounds.backgroundMenu.path,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 32.h),
            child: Stack(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PrimaryButton(
                          asset: Assets.images.buttons.info.path,
                          width: 208.w,
                          height: 208.h,
                          borderColor: AppColors.borderPrimaryColor,
                          onPressed: () =>
                              context.push(AppRoutes.instruction.path),
                        ),
                        PrimaryButton(
                          asset: Assets.images.buttons.menu.path,
                          width: 208.w,
                          height: 208.h,
                          borderColor: AppColors.borderPrimaryColor,
                          onPressed: () => context.push(AppRoutes.menu.path),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: context.getWidth * 0.09,
                        top: context.getHeight < 700
                            ? context.getHeight * 0.04
                            : context.getHeight * 0.1,
                      ),
                      child: Image.asset(
                        width: context.getWidth * 0.8,
                        Assets.images.chickens.chickenPrimary.path,
                      ),
                    ),
                  ],
                ),
                Positioned(
                  left: context.getWidth * 0.18,
                  bottom: 20.h,
                  child: PrimaryButton(
                    asset: Assets.images.buttons.play.path,
                    width: 668.w,
                    height: 347.h,
                    borderColor: AppColors.borderSecondaryColor,
                    onPressed: () {
                      context.push(AppRoutes.level.path);
                    },
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
