import 'package:flutter/material.dart';
import 'package:myapp/globals/responsive_widget.dart';

class Sobremi extends ResponsiveWidget {
  const Sobremi({super.key});

  @override
  Widget buildDesktop(BuildContext context) {
    return const DesktopSobremi();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return const MobileSobremi();
  }
}

class DesktopSobremi extends StatelessWidget {
  const DesktopSobremi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 500,
      color: Colors.white,
      child: Row(
        children: [
          Expanded(child: Image.asset("assets/personaje_sin_fondo.png")),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 100),
                Text(
                  "Sobre mi",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 32),
                Text(
                  "Soy Matías Bazán, programador especializado en PHP con experiencia en el\ndesarrollo de aplicaciones web dinámicas y escalables. Me apasiona crear\nsoluciones eficientes, bien estructuradas y centradas en la experiencia del usuario.\nMe caracterizo por mi enfoque práctico, mi curiosidad constante por\naprender nuevas tecnologías y mi compromiso con las buenas prácticas de\nprogramación. Disfruto trabajar tanto en proyectos individuales como en equipos colaborativos,\nbuscando siempre mejorar el rendimiento, la seguridad y la mantenibilidad del código.",
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MobileSobremi extends StatelessWidget {
  const MobileSobremi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 850,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/personaje_sin_fondo_movil.png"),
          SizedBox(height: 50),
          Text(
            "Sobre mi",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 32),
          Text(
            "Soy Matías Bazán, programador especializado en PHP con experiencia en el\ndesarrollo de aplicaciones web dinámicas y escalables. Me apasiona crear\nsoluciones eficientes, bien estructuradas y centradas en la experiencia del usuario.\n Me caracterizo por mi enfoque práctico, mi curiosidad constante por\naprender nuevas tecnologías y mi compromiso con las buenas prácticas de\nprogramación. Disfruto trabajar tanto en proyectos individuales como en equipos colaborativos,\nbuscando siempre mejorar el rendimiento, la seguridad y la mantenibilidad del código.",
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
