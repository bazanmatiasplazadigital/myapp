import 'package:flutter/material.dart';
import 'package:myapp/globals/responsive_widget.dart';

class PortadaSeccion extends ResponsiveWidget {
  const PortadaSeccion({super.key});

  @override
  Widget buildDesktop(BuildContext context) {
    return const DesktopPortadaSeccion();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return const MobilePortadaSeccion();
  }
}

//Escritorio
class DesktopPortadaSeccion extends StatelessWidget {
  const DesktopPortadaSeccion({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 750,
      color: Color(0xFF00C8FF),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 200),
                Text(
                  "Me gusta crear\ncosas divertidas e interactivas\ncon código.",
                  style: TextStyle(color: Colors.black, fontSize: 48),
                ),
                SizedBox(height: 16),
                Container(
                  padding: EdgeInsets.all(16.0),
                  width: 200,
                  height: 70,
                  color: Colors.white,
                  child: Text(
                    "Descargar CV",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: Image.asset("assets/fondo_1.png")),
        ],
      ),
    );
  }
}

//Movil
class MobilePortadaSeccion extends StatelessWidget {
  const MobilePortadaSeccion({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 600,
      color: Color(0xFF00C8FF),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/fondo_de_la_imagen_movil.png"),
          SizedBox(height: 50),
          Text(
            "Me gusta crear\ncosas divertidas e\ninteractivas con código.",
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
          SizedBox(height: 16),
          Container(
            padding: EdgeInsets.all(16.0),
            width: 200,
            height: 70,
            color: Colors.white,
            child: Text(
              "Descargar CV",
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
