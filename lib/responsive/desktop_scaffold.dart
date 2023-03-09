import 'package:flutter/material.dart';
import 'package:mediaquery/responsive/constants.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackgroundColor,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 2,
            child: SizedBox(
              height: 80,
              width: double.infinity,
              child: GridView.builder(
                  itemCount: 2,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.pink.shade100,
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
