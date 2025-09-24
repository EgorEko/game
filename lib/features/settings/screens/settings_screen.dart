import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/common/utils/extensions.dart';
import '../../../core/common/widgets/background_widget.dart';
import '../../../core/common/widgets/buttons/button_widget.dart';
import '../../../core/common/widgets/buttons/primary_button.dart';
import '../../../core/di/di.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../gen/assets.gen.dart';
import '../blocs/switching_cubit/switching_cubit.dart';
import '../widgets/row_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = getIt<SwitchingCubit>();
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
                      height: context.getHeight * 0.4,
                      width: context.getWidth * 0.98,
                      decoration: BoxDecoration(
                        color: AppColors.transparentObjectColor,
                        borderRadius: BorderRadius.all(Radius.circular(20.r)),
                        border: Border.all(
                          color: AppColors.borderTransparentObjectColor,
                          width: 5.w,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 64.h),
                        child: BlocBuilder<SwitchingCubit, SwitchingState>(
                          bloc: cubit,
                          builder: (context, state) {
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: context.getWidth * 0.15,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'settings'.toUpperCase(),
                                    style: AppTextStyles.loadingPrimaryTextStyle
                                        .copyWith(color: AppColors.white),
                                  ),
                                  Spacer(),
                                  RowWidget(
                                    title: 'music',
                                    value: cubit.state.music,
                                    onChange: (v) => cubit.switchMusic(),
                                  ),
                                  Spacer(),
                                  RowWidget(
                                    title: 'sound',
                                    value: cubit.state.sound,
                                    onChange: (v) => cubit.switchSound(),
                                  ),
                                  Spacer(),
                                  RowWidget(
                                    title: 'notification',
                                    value: cubit.state.notification,
                                    onChange: (v) => cubit.switchNotification(),
                                  ),
                                  Spacer(),

                                  RowWidget(
                                    title: 'vibration',
                                    value: cubit.state.vibration,
                                    onChange: (v) => cubit.switchVibration(),
                                  ),
                                  Spacer(),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  ButtonWidget(
                    text: 'save',
                    width: 668.w,
                    height: 347.h,
                    style: AppTextStyles.saveButtonTextStyle,
                    onTap: () {},
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
