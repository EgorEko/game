import 'package:flutter/material.dart';

import '../utils/extensions.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({super.key, required this.child, required this.asset});

  final Widget child;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.getWidth,
      height: context.getHeight,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(asset), fit: BoxFit.fill),
      ),
      child: child,
    );
  }
}
