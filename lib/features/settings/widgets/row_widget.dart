import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/di/di.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';
import '../blocs/switching_cubit/switching_cubit.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({
    super.key,
    required this.title,
    required this.value,
    required this.onChange,
  });

  final String title;
  final bool value;
  final ValueChanged<bool> onChange;

  @override
  Widget build(BuildContext context) {
    final cubit = getIt<SwitchingCubit>();
    return BlocBuilder<SwitchingCubit, SwitchingState>(
      bloc: cubit,
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title.toUpperCase(),
              style: AppTextStyles.menuButtonsTextStyle.copyWith(
                color: AppColors.white,
              ),
            ),
            CupertinoSwitch(
              value: value,
              inactiveTrackColor: AppColors.bottomSheetDividerColor,
              onChanged: onChange,
            ),
          ],
        );
      },
    );
  }
}
