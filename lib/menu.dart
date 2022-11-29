import 'package:flutter/material.dart';
import 'package:flutter_application_1/SESION4/inicio4.dart';
import 'package:flutter_application_1/SESION5/index5.dart';
import 'package:flutter_application_1/SESION6/index6.dart';
import 'package:flutter_application_1/SESION7/index7.dart';
import 'package:flutter_application_1/SESION8/index8.dart';
import 'package:flutter_application_1/SESION9/index9.dart';
import 'package:flutter_application_1/Sesion3/inicio3.dart';
import 'package:flutter_application_1/widgetsdemo.dart';

class MenuInicio extends StatelessWidget {
  const MenuInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sesion de Clase'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ButtonWidget(
              texto: 'Sesion 3',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const IndexSesion3()));
              },
            ),
            ButtonWidget(
              texto: 'Sesion 4',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Inicio4()),
                );
              },
            ),
            ButtonWidget(
              texto: 'Sesion 5',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Inicio5()),
                );
              },
            ),
            ButtonWidget(
              texto: 'Sesion 6',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home6()),
                );
              },
            ),
            ButtonWidget(
              texto: 'Sesion 7',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Index7()),
                );
              },
            ),
            ButtonWidget(
              texto: 'Sesion 8',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home8()),
                );
              },
            ),
            ButtonWidget(
              texto: 'Sesion 9',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home9()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
