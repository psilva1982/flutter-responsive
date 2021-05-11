import 'package:flutter/material.dart';
import 'package:teste/screens/breakpoints.dart';
import 'package:teste/screens/home/widgets/app_bar/mobile_app_bar.dart';
import 'package:teste/screens/home/widgets/app_bar/web_app_bar.dart';
import 'package:teste/screens/home/widgets/sections/advantages_section.dart';
import 'package:teste/screens/home/widgets/sections/courses_section.dart';
import 'package:teste/screens/home/widgets/sections/top_section.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, contrains) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: contrains.maxWidth < mobileBreakpoint
              ? PreferredSize(
                  preferredSize: Size(double.infinity, 56),
                  child: MobileAppBar(),
                )
              : PreferredSize(
                  preferredSize: Size(double.infinity, 56),
                  child: WebAppBar(),
                ),
          drawer: contrains.maxWidth < mobileBreakpoint ? Drawer() : null,
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 1680),
              child: ListView(
                children: [
                  TopSection(),
                  AdvantagesSection(),
                  CoursesSection()
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
