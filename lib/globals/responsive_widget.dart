import 'package:flutter/material.dart';

abstract class ResponsiveWidget extends StatelessWidget {
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2215677318.
  const ResponsiveWidget({super.key});

  Widget buildMobile(BuildContext context);

  Widget buildDesktop(BuildContext context);

// Suggested code may be subject to a license. Learn more: ~LicenseLog:562667868.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 600) {
          return buildMobile(context);
        } else {
          return buildDesktop(context);
        }
      },
    );
  }
}
