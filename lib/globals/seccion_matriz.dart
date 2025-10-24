import 'package:flutter/material.dart';
import 'package:myapp/globals/responsive_widget.dart';

class Nombre extends ResponsiveWidget {
  const Nombre({super.key});

  @override
  Widget buildDesktop(BuildContext context) {
    return const DesktopNombre();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return const MobileNombre();
  }
}

class DesktopNombre extends StatelessWidget {
  const DesktopNombre({super.key});

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}

class MobileNombre extends StatelessWidget {
  const MobileNombre({super.key});

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}
