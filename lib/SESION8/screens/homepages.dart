// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    final List<dynamic> data = [
      {
        'img':
            'https://cdn.pixabay.com/photo/2017/09/26/20/13/eiffel-2789943_960_720.jpg',
        'username': 'Prueba 1'
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2013/04/21/14/49/dubai-106202__340.jpg',
        'username': 'Prueba 2'
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2018/05/30/00/36/guizhou-3440461__340.jpg',
        'username': 'Prueba 3'
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2017/09/26/20/13/eiffel-2789943_960_720.jpg',
        'username': 'Prueba 4'
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2017/09/26/20/13/eiffel-2789943_960_720.jpg',
        'username': 'Prueba 5'
      },
    ];
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          PageView.builder(
            itemBuilder: (context, index) {
              final datos = data[index];
              return TicktokWidget(
                img: datos['img'],
                username: datos['username'],
              );
            },
            itemCount: data.length,
            scrollDirection: Axis.vertical,
            controller: controller,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.live_tv_outlined)),
              SizedBox(
                width: 120,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [Text('Siguiente'), Text('Para ti')]),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.search))
            ],
          ),
        ],
      )),
    );
  }
}

class TicktokWidget extends StatelessWidget {
  final String? img;
  final String? username;

  const TicktokWidget({super.key, this.img = '', this.username = ''});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.network(
          '$img',
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Text(
                        '$username',
                        style: TextStyle(fontSize: 18),
                      ),
                      Icon(
                        Icons.verified,
                        color: Colors.blue,
                      )
                    ],
                  ),
                  Text('#Hola #Mundo #flutter'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage('$img'),
                  ),
                  Column(
                    children: [Icon(Icons.favorite), Text('24')],
                  ),
                  Column(
                    children: [Icon(Icons.comment), Text('24')],
                  ),
                  Column(
                    children: [Icon(Icons.bookmark), Text('24')],
                  ),
                  Column(
                    children: [Icon(Icons.share), Text('24')],
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
