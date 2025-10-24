import 'package:flutter/material.dart';
import 'package:myapp/globals/responsive_widget.dart';

class Navbar extends ResponsiveWidget {
  const Navbar({super.key});

  @override
  Widget buildDesktop(BuildContext context) {
    return const DesktopNavbar();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return const MobileNavbar();
  }
}

class DesktopNavbar extends StatelessWidget {
  const DesktopNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF00C8FF),
      width: double.infinity,
      height: 100,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1140),
        child: Container(
          color: Color(0xFF00C8FF),
          child: Column(
            children: [
              SizedBox(height: 20),
              Row(
                children: [
                  Image.asset('assets/Icono.png'),
                  Expanded(child: Container()),
                  SizedBox(width: 30),
                  Text(
                    "Inicio",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  SizedBox(width: 30),
                  Text(
                    "Proyectos",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  SizedBox(width: 30),
                  Text(
                    "Sobre mi",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  SizedBox(width: 30),
                  Text(
                    "Contacto",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  SizedBox(width: 30),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*Actualizar*/

class MobileNavbar extends StatelessWidget {
  const MobileNavbar({super.key});
  //Barra de navegacion
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      color: Color(0xFF00C8FF),
      child: Row(
        children: [
          SizedBox(
            width: 80,
            height: 80,
            child: GestureDetector(
              child: Icon(Icons.menu, color: Colors.white),
            ),
          ),
          Text("Inicio", style: TextStyle(color: Colors.white)),
          SizedBox(width: 7),
          Text("Proyecto", style: TextStyle(color: Colors.white)),
          SizedBox(width: 7),
          Text("Sobre mi", style: TextStyle(color: Colors.white)),
          SizedBox(width: 7),
          Text("Contacto", style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
