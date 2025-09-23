import 'package:flutter/material.dart';

import '../../../core/common/widgets/background_widget.dart';
import '../../../gen/assets.gen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        asset: Assets.images.backgrounds.backgroundMenu.path,
        child: Container(),
      ),
    );
  }
}
