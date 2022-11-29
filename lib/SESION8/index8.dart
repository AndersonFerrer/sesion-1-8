import 'package:flutter/material.dart';
import 'package:flutter_application_1/SESION8/screens/navegacionreels.dart';
import 'package:flutter_application_1/SESION8/screens/navegacionscreen.dart';
import 'package:flutter_application_1/widgetsdemo.dart';

class Home8 extends StatelessWidget {
  const Home8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sesion 8'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ButtonWidget(
              texto: 'Scroll',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NavegacionScreen()),
                );
              },
            ),
            ButtonWidget(
              texto: 'Actividad IG-Reels',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NavegacionReels()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
