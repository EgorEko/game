import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../gen/assets.gen.dart';
import '../../theme/app_colors.dart';
import '../utils/extensions.dart';

class CoinCountWidget extends StatelessWidget {
  const CoinCountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.w,
      height: 100.h,
      child: Stack(
        children: [
          Column(
            children: [
              Spacer(),
              Container(
                width: 207.w,
                height: 75.h,
                decoration: BoxDecoration(
                  color: AppColors.orange,
                  border: Border.all(
                    color: AppColors.borderStatusCoinsColor,
                    width: 3.w,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(30.r)),
                ),
              ),
              Spacer(),
            ],
          ),
          Row(
            children: [
              Spacer(),
              SizedBox(
                width: 141.w,
                height: 137.h,
                child: Image.asset(Assets.images.coins.coin.path),
              ),
              SizedBox(width: context.getWidth * 0.03),
            ],
          ),
        ],
      ),
    );
  }
}
