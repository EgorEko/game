import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/blocs/loading_cubit/loading_cubit.dart';
import '../../../core/common/utils/extensions.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoadingCubit()..startAnimation(),
      child: Center(
        child: BlocBuilder<LoadingCubit, LoadingState>(
          builder: (context, state) {
            return Stack(
              children: [
                Container(
                  width: context.getWidth * 0.88 + 10.w,
                  height: context.getHeight * 0.06 + 10.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.gradientVerticalStart,
                        AppColors.gradientEnd,
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: context.getHeight * 0.003,
                  left: context.getWidth * 0.004,
                  child: Container(
                    width: context.getWidth * 0.88,
                    height: context.getHeight * 0.06,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: LinearGradient(
                        colors: [
                          AppColors.gradientHorizontalStart,
                          AppColors.gradientEnd,
                          AppColors.white,
                        ],
                        stops: [
                          state.progress! - 0.5,
                          state.progress!,
                          state.progress! + 0.5,
                        ],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Text(
                              '${state.percent}%',
                              style: AppTextStyles.loadingSecondaryTextStyle,
                            ),
                            Positioned(
                              top: 1.h,
                              left: 1.w,
                              child: Text(
                                textAlign: TextAlign.center,
                                '${state.percent}%',
                                style: AppTextStyles.loadingPrimaryTextStyle,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
