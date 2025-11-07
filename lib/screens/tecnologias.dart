import 'package:flutter/material.dart';
import 'package:myapp/globals/responsive_widget.dart';

class Tecnologias extends ResponsiveWidget {
  const Tecnologias({super.key});

  @override
  Widget buildDesktop(BuildContext context) {
    return const DesktopTecnologias();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return const MobileTecnologias();
  }
}

class DesktopTecnologias extends StatelessWidget {
  const DesktopTecnologias({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      color: Colors.white,
      child: Column(
        children: [
          Text(
            "Tecnologías que utilizo del ecosistema web",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/nodejs1_1.png"),
              SizedBox(width: 20),
              Image.asset("assets/react1_1.png"),
              SizedBox(width: 20),
              Image.asset("assets/css1_1.png"),
              SizedBox(width: 20),
              Image.asset("assets/figma1_1.png"),
            ],
          ),
        ],
      ),
    );
  }
}

class MobileTecnologias extends StatelessWidget {
  const MobileTecnologias({super.key});

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}
