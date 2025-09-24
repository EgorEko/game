import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/common/utils/extensions.dart';
import '../../../core/common/utils/utils.dart';
import '../../../core/common/widgets/background_widget.dart';
import '../../../core/common/widgets/buttons/button_widget.dart';
import '../../../core/common/widgets/buttons/primary_button.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../gen/assets.gen.dart';
import '../widgets/bottom_sheet/bottom_sheet_widget.dart';
import '../widgets/text_form_field_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

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
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    child: Container(
                      height: context.getHeight * 0.55,
                      width: context.getWidth * 0.8,
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'profile'.toUpperCase(),
                              style: AppTextStyles.loadingPrimaryTextStyle
                                  .copyWith(color: AppColors.white),
                            ),
                            SizedBox(height: context.getHeight * 0.05),
                            Stack(
                              children: [
                                PrimaryButton(
                                  asset:
                                      Assets.images.buttons.activeButton.path,
                                  width: 355.w,
                                  height: 361.h,
                                  borderColor:
                                      AppColors.borderTransparentObjectColor,
                                  onPressed: () {},
                                ),
                                Positioned(
                                  left: 150.w,
                                  bottom: 30.h,
                                  child: Container(
                                    width: 60.w,
                                    height: 60.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.r),
                                      ),
                                      gradient: LinearGradient(
                                        colors: [
                                          AppColors.greenGradientStart,
                                          AppColors.greenGradientEnd,
                                        ],
                                      ),
                                    ),
                                    child: SizedBox(
                                      width: 36.w,
                                      height: 36.h,
                                      child: IconButton(
                                        onPressed: () {
                                          Utils.showBottomSheet(
                                            context,
                                            BottomSheetWidget(),
                                          );
                                        },
                                        icon: Assets.icons.edit.image(),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TextFormFieldWidget(
                              controller: _nameController,
                              keyboardType: TextInputType.text,
                              inputAction: TextInputAction.next,
                              onChanged: () {},
                              hintText: 'username',
                              obscureText: false,
                            ),
                            20.verticalSpace,
                            TextFormFieldWidget(
                              controller: _emailController,
                              keyboardType: TextInputType.emailAddress,
                              inputAction: TextInputAction.done,
                              onChanged: () {},
                              hintText: 'email',
                              obscureText: false,
                            ),
                          ],
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
