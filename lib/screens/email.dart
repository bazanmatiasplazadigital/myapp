import 'package:flutter/material.dart';
import 'package:myapp/globals/info_web.dart';
import 'package:myapp/globals/responsive_widget.dart';
import 'package:myapp/globals/colors.dart';
import 'package:url_launcher/url_launcher_string.dart';

class EmailBanner extends ResponsiveWidget {
  const EmailBanner({super.key});

  @override
  Widget buildDesktop(BuildContext context) {
    return const EmailBannerDesktop();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return const EmailBannerMobile();
  }
}

class EmailBannerDesktop extends StatelessWidget {
  const EmailBannerDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: double.infinity,
      color: Colors.black87,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(width: double.infinity, height: 3, color: Colors.white),
          const SizedBox(height: 25),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 30),
              Text(
                'Contactanos por Correo',
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
              SizedBox(width: 25),
              Icon(Icons.email_outlined, color: MyColors.colorNegro, size: 40),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
            child: Text(
              'Dejanos un correo electrónico con tu duda o consulta ingresando a el siguiente link :',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Expanded(child: Container()),
          emailButton(gmailUrlApp),
        ],
      ),
    );
  }
}

class EmailBannerMobile extends StatelessWidget {
  const EmailBannerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: double.infinity,
      color: Colors.black87,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(width: double.infinity, height: 3, color: Colors.white),
          const SizedBox(height: 25),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 30),
              Text(
                'Contactanos por Correo',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              SizedBox(width: 25),
              Icon(Icons.email_outlined, color: MyColors.colorNegro, size: 30),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
            child: Text(
              'Dejanos un correo electrónico con tu duda o consulta ingresando a el siguiente link :',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Expanded(child: Container()),
          emailButton(gmailUrlMobileApp),
        ],
      ),
    );
  }
}

Center emailButton(String url) {
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(25),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () => launchUrlString(url),
          child: Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
              color: MyColors.colorNegro,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Center(
                    child: Text(
                      'Enviar Correo',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Icon(Icons.navigate_next_sharp, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
