import 'package:flutter/material.dart';
import 'package:myapp/globals/whatsapp_button.dart';
import 'package:myapp/screens/email.dart';
import 'package:myapp/screens/navbar.dart';
import 'package:myapp/screens/portada.dart';
import 'package:myapp/screens/footer.dart';
import 'package:myapp/screens/sobremi.dart';
import 'package:myapp/screens/tecnologias.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(),
                //Barra de navegacion
                Navbar(),

                //Portada
                PortadaSeccion(),

                //Banner
                Sobremi(),

                Tecnologias(),

                EmailBanner(),

                //Footer
                Footer(),
              ],
            ),
          ),
          Positioned(left: 0, right: 0, top: 0, child: Navbar()),
          Positioned(bottom: 70, right: 20, child: WhatsAppButton()),
        ],
      ),
    );
  }
}
