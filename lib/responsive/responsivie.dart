import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {

  final Widget tabletScaffold;
  final Widget desktopScaffold;
   ResponsiveLayout({required this.desktopScaffold, required this.tabletScaffold});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 768) {
        return tabletScaffold;
      } else
        (constraints.maxWidth < 1024);
      return desktopScaffold;
    });
  }
}
