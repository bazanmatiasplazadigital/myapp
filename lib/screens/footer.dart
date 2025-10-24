import 'package:flutter/material.dart';
import 'package:myapp/globals/responsive_widget.dart';
import 'package:url_launcher/url_launcher_string.dart';

GestureDetector iconos(String image, String link) {
  return GestureDetector(
    onTap: () =>
        launchUrlString(mode: LaunchMode.externalApplication, "https://$link"),
    child: Container(child: Image.asset("../../assets/$image.png")),
  );
}

class Footer extends ResponsiveWidget {
  const Footer({super.key});

  @override
  Widget buildDesktop(BuildContext context) {
    return const DesktopFooter();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return const MobileFooter();
  }
}

class DesktopFooter extends StatelessWidget {
  const DesktopFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      color: Color(0xFF00C8FF),
      child: Center(
        child: Column(
          children: [
            Image.asset("../../assets/Icono.png"),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                iconos("dribbble", "www.dribbble.com"),
                SizedBox(width: 10),
                iconos("icono_linkedin", "www.linkedin.com"),
                SizedBox(width: 10),
                iconos("github", "www.github.com"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MobileFooter extends StatelessWidget {
  const MobileFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      color: Color(0xFF00C8FF),
      child: Center(
        child: Column(
          children: [
            Image.asset("../../assets/Icono.png"),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                iconos("dribbble", "www.dribbble.com"),
                SizedBox(width: 10),
                iconos("icono_linkedin", "www.linkedin.com"),
                SizedBox(width: 10),
                iconos("github", "www.github.com"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
