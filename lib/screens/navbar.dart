import 'package:flutter/material.dart';
import 'package:myapp/globals/responsive_widget.dart';

class NavBar extends ResponsiveWidget {
  // Recibimos todas las funciones necesarias
  final VoidCallback onHomeTap;
  final VoidCallback onAboutTap;
  final VoidCallback onContactTap;
  final VoidCallback onMenuTap; // Nueva función para el botón de menú móvil

  const NavBar({
    super.key,
    required this.onHomeTap,
    required this.onAboutTap,
    required this.onContactTap,
    required this.onMenuTap,
  });

  @override
  Widget buildDesktop(BuildContext context) {
    return DesktopNavBar(
      onHomeTap: onHomeTap,
      onAboutTap: onAboutTap,
      onContactTap: onContactTap,
    );
  }

  @override
  Widget buildMobile(BuildContext context) {
    return MobileNavBar(onMenuTap: onMenuTap);
  }
}

// --- VERSIÓN DESKTOP (Botones visibles) ---
class DesktopNavBar extends StatelessWidget {
  final VoidCallback onHomeTap;
  final VoidCallback onAboutTap;
  final VoidCallback onContactTap;

  const DesktopNavBar({
    super.key,
    required this.onHomeTap,
    required this.onAboutTap,
    required this.onContactTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          SizedBox(
            width: 140,
            height: 140,
            child: Image.asset("assets/Icono.png"),
          ), // Logo
          Expanded(child: Container()),

          TextButton(
            onPressed: onHomeTap,
            child: const Text("Inicio", style: TextStyle(color: Colors.black)),
          ),
          const SizedBox(width: 20),
          TextButton(
            onPressed: onAboutTap,
            child: const Text(
              "Sobre Nosotros",
              style: TextStyle(color: Colors.black),
            ),
          ),
          const SizedBox(width: 20),
          TextButton(
            onPressed: onContactTap,
            child: const Text(
              "Tecnologias",
              style: TextStyle(color: Colors.black),
            ),
          ),
          const SizedBox(width: 20),
          TextButton(
            onPressed: onContactTap,
            child: const Text(
              "Contacto",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}

// --- VERSIÓN MOBILE (Solo el botón hamburguesa) ---
class MobileNavBar extends StatelessWidget {
  final VoidCallback onMenuTap; // El interruptor

  const MobileNavBar({super.key, required this.onMenuTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      color: Colors.black,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.flutter_dash, color: Colors.white), // Logo simple
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: onMenuTap, // Al tocar, avisamos a la HomePage
          ),
        ],
      ),
    );
  }
}
