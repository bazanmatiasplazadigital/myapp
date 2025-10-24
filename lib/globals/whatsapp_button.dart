import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class WhatsAppButton extends StatefulWidget {
  const WhatsAppButton({super.key});

  @override
  State<WhatsAppButton> createState() => _WhatsAppButtonState();
}

class _WhatsAppButtonState extends State<WhatsAppButton> {
  void _launchWhatsApp() async {
    if (await canLaunchUrlString("https://wa.me/+5491168453722")) {
      await launchUrlString("https://wa.me/+5491168453722");
    } else {
      // Maneja el caso en que no se puede lanzar la URL
      print("No se pudo abrir WhatsApp");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: _launchWhatsApp,
        child: Container(
          width: 64, // Asegura un tamaño adecuado
          height: 64, // Asegura un tamaño adecuado
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('../../assets/wsp-logo.webp'),
              fit: BoxFit.cover,
            ),
            shape: BoxShape.circle, // Le da una forma circular al botón
          ),
        ),
      ),
    );
  }
}
