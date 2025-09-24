import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../gen/assets.gen.dart';

class TextFormFieldWidget extends StatefulWidget {
  const TextFormFieldWidget({
    super.key,
    required this.controller,
    required this.onChanged,
    required this.hintText,
    required this.obscureText,
    required this.keyboardType,
    required this.inputAction,
  });

  final TextEditingController controller;
  final VoidCallback onChanged;
  final String hintText;
  final bool obscureText;
  final TextInputType keyboardType;
  final TextInputAction inputAction;

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    final focus = FocusScope.of(context);
    return SizedBox(
      width: 610.w,
      child: TextFormField(
        controller: widget.controller,
        obscureText: widget.obscureText,
        cursorColor: AppColors.white,
        style: AppTextStyles.menuButtonsTextStyle,
        onEditingComplete: () {
          focus.nextFocus();
        },
        textInputAction: widget.inputAction,
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        keyboardType: widget.keyboardType,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
          hintText: widget.hintText.toUpperCase(),
          hintStyle: AppTextStyles.menuButtonsTextStyle,
          filled: true,
          fillColor: AppColors.borderTransparentObjectColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.r)),
          ),
          suffix: Image.asset(
            width: 36.w,
            height: 36.h,
            Assets.icons.edit.path,
          ),
        ),
      ),
    );
  }
}
