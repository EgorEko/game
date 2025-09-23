import 'package:flutter/material.dart';

import '../../../core/common/utils/extensions.dart';
import '../../../core/common/widgets/background_widget.dart';
import '../../../gen/assets.gen.dart';
import '../widgets/loading_widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        asset: Assets.images.backgrounds.backgroundMenu.path,
        child: Stack(
          children: [
            Positioned(
              left: context.getWidth * 0.045,
              bottom: context.getHeight * 0.02,
              child: Image.asset(
                width: context.getWidth * 0.97,
                Assets.images.chickens.chickenPrimary.path,
              ),
            ),
            Positioned(
              left: context.getWidth * 0.045,
              bottom: context.getHeight * 0.1,
              child: LoadingWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
