import 'package:flutter/material.dart';
import 'package:myapp/globals/whatsapp_button.dart';
import 'package:myapp/screens/email.dart';
import 'package:myapp/screens/navbar.dart';
import 'package:myapp/screens/portada.dart';
import 'package:myapp/screens/footer.dart';
import 'package:myapp/screens/sobremi.dart';
import 'package:myapp/screens/tecnologias.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // 1. LAS KEYS (Etiquetas)
  final GlobalKey keyHome = GlobalKey();
  final GlobalKey keySobreNosotros = GlobalKey();
  final GlobalKey keyContacto = GlobalKey();

  // 2. EL CHOFER DEL SCROLL (Nuevo)
  final ScrollController _scrollController = ScrollController();

  // Variable para el menú móvil
  bool _isMenuOpen = false;

  // 3. LA FUNCIÓN MATEMÁTICA (Modificada)
  void scrollToSection(GlobalKey key) {
    // Cerramos el menú móvil si está abierto
    if (_isMenuOpen) {
      setState(() {
        _isMenuOpen = false;
      });
    }

    // --- AQUÍ ESTÁ EL TRUCO ---
    final context = key.currentContext!;

    // Buscamos dónde está la sección (su caja o RenderBox)
    final box = context.findRenderObject() as RenderBox;

    // Calculamos la posición absoluta en la página
    // (box.localToGlobal nos dice dónde está en la pantalla,
    //  le sumamos lo que ya scrolleamos para saber la posición total)
    final yPosition =
        box.localToGlobal(Offset.zero).dy + _scrollController.offset;

    // Le RESTAMOS la altura de la NavBar
    final targetPosition = yPosition - 70;

    // Ejecutamos el movimiento
    _scrollController.animateTo(
      targetPosition < 0 ? 0 : targetPosition, // Evitamos números negativos
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double navBarHeight = 50;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                SingleChildScrollView(),
                //Barra de navegacion

                //Portada
                Container(key: keyHome, child: PortadaSeccion()),

                //Banner
                Container(key: keySobreNosotros, child: Sobremi()),

                Tecnologias(),

                Container(key: keyContacto, child: EmailBanner()),

                //Footer
                Footer(),
              ],
            ),
          ),
          homeMobileDes(navBarHeight),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: NavBar(
              onHomeTap: () => scrollToSection(keyHome),
              onAboutTap: () => scrollToSection(keySobreNosotros),
              onContactTap: () => scrollToSection(keyContacto),
              onMenuTap: () {
                setState(() {
                  _isMenuOpen = !_isMenuOpen;
                });
              },
            ),
          ),
          Positioned(bottom: 70, right: 20, child: WhatsAppButton()),
        ],
      ),
    );
  }

  Positioned homeMobileDes(double navBarHeight) {
    return Positioned(
      top: navBarHeight,
      left: 0,
      right: 0,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: _isMenuOpen ? 180 : 0,
        color: Colors.black87,
        curve: Curves.easeInOut,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: const Center(
                  child: Text("Home", style: TextStyle(color: Colors.white)),
                ),
                onTap: () => scrollToSection(keyHome),
              ),
              ListTile(
                title: const Center(
                  child: Text(
                    "Sobre Nosotros",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                onTap: () => scrollToSection(keySobreNosotros),
              ),
              ListTile(
                title: const Center(
                  child: Text(
                    "Contacto",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                onTap: () => scrollToSection(keySobreNosotros),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
