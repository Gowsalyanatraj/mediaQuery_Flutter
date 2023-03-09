import 'package:flutter/material.dart';
import 'package:mediaquery/responsive/desktop_scaffold.dart';
import 'package:mediaquery/responsive/responsivie.dart';
import 'package:mediaquery/responsive/tablet_scaffold.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        desktopScaffold: const DesktopScaffold(),
         tabletScaffold: const TabletScaffold()),
    );
  }
}
