import 'package:flutter/material.dart';
import 'package:flutter_application_1/SESION7/screens/actividadscroll.dart';
import 'package:flutter_application_1/SESION7/screens/scrollpage.dart';
import 'package:flutter_application_1/widgetsdemo.dart';

class Index7 extends StatelessWidget {
  const Index7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Sesion 7'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 280,
            child: Image.network(
                'https://cdn.pixabay.com/photo/2022/10/23/22/45/highway-7542272__340.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Titulo principal',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Subtitulo principal',
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow[700],
                ),
                const Text('41')
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.call)),
                  Text('Call')
                ],
              ),
              Column(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.map_outlined)),
                  Text('Route')
                ],
              ),
              Column(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                  Text('Share')
                ],
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: SizedBox(
              child: Text(
                'Flutter es un SDK de código fuente abierto de desarrollo de aplicaciones móviles creado por Google. Suele usarse para desarrollar interfaces de usuario para aplicaciones en Android, iOS y Web así como método primario para crear aplicaciones para Google Fuchsia.​',
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ButtonWidget(
              texto: 'ScrollPage',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ScrollPage()));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ButtonWidget(
              texto: 'Actividad',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ActividadScrollPage()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
