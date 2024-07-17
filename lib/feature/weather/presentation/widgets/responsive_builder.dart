import 'package:flutter/material.dart';

class ResponsiveBuilder extends StatelessWidget {
  final WidgetBuilder portraitBuilder;
  final WidgetBuilder landscapeBuilder;

  const ResponsiveBuilder({
    super.key,
    required this.portraitBuilder,
    required this.landscapeBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final orientation = MediaQuery.of(context).orientation;
        final size = MediaQuery.of(context).size;
        final wideScreen = size.width > 600;
        if (orientation == Orientation.landscape || wideScreen) {
          return landscapeBuilder(context);
        } else {
          return portraitBuilder(context);
        }
      },
    );
  }
}
