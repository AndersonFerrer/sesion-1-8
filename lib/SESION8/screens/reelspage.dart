// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ReelsPages extends StatelessWidget {
  const ReelsPages({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    final List<dynamic> data = [
      {
        'img':
            'https://cdn.pixabay.com/photo/2017/09/26/20/13/eiffel-2789943_960_720.jpg',
        'username': 'Anderson Ferrer',
        'avatar':
            'https://scontent.fchm1-1.fna.fbcdn.net/v/t39.30808-6/277368748_4254987277938186_776529483703659197_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeG0F7G7Xoozobb20QnrJ_bCqa2vtRM1tZepra-1EzW1l_foMC0ye7rw-XXLHTePlG-ioAgf6ekDwNsDEdWNKDF0&_nc_ohc=oKBZteOhJe8AX_LuCQ7&_nc_ht=scontent.fchm1-1.fna&oh=00_AfDCObqZpt9-JMpZ4HTVbfyJZzOYY7ltNuZwnxHlmq_T3Q&oe=637C0AE6',
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2013/04/21/14/49/dubai-106202__340.jpg',
        'username': 'Alejandro Ferrer',
        'avatar':
            'https://scontent.fchm1-1.fna.fbcdn.net/v/t1.18169-9/11752499_487041688128444_7634394309117775119_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGSlps_i1ZQmp56B8Cd3ZLgklC4l8g4_MqSULiXyDj8ygPvapZeC3Jh1Q2wMe12UtIi2zXGYJdQyJk1JM5vaUCR&_nc_ohc=TDJE8WT3oxkAX9DtrhJ&_nc_ht=scontent.fchm1-1.fna&oh=00_AfBHb94F6FforQ5w9jUv5octBehQltZOZqrSf2vYyntScA&oe=639DC372',
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2022/08/02/18/29/happy-7361025_640.jpg',
        'username': 'Roxana Ysla',
        'avatar':
            'https://scontent.fchm1-1.fna.fbcdn.net/v/t1.6435-9/58373193_1020414488163072_5063771819283054592_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFg8N9c-cuNb-Tmzn6bUW82kqM3MvLEBhWSozcy8sQGFQKkYqMb-Syt8VQ7dMpBd79a1IHZTy2Vi51lCDpYXgpO&_nc_ohc=vVlCYhHZcOUAX82vMm5&_nc_ht=scontent.fchm1-1.fna&oh=00_AfArHzP3wNrEh0Z7HmSLDiGUZLGx90OcBzusaw4k-gGVCQ&oe=639DCCB4',
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2020/06/16/01/40/buildings-5303864__340.jpg',
        'username': 'Felipe Rodriguez',
        'avatar':
            'https://scontent.fchm1-1.fna.fbcdn.net/v/t1.6435-9/116761818_3045388428923805_5350509655760638432_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHpqkytWr9Y11tADNig-rxXmZ7bYiY9kRqZnttiJj2RGlaBIJ80eNtz4d8eMqLIBMOQCQ7BVwek4h5wsPuT8XOn&_nc_ohc=SKKe3fIaCKMAX-vrRnZ&tn=ZoGTHHvOknsQ6jWj&_nc_ht=scontent.fchm1-1.fna&oh=00_AfCt_SAv-8JHdiMxaP9HiShDKJ0adAhcihjNuXTrf8QSvw&oe=639DC6A8',
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2017/01/13/00/11/rio-de-janeiro-1976010__340.jpg',
        'username': 'Junior Ferrer',
        'avatar':
            'https://scontent.fchm1-1.fna.fbcdn.net/v/t31.18172-8/11010595_461915077307772_3833359843519444856_o.jpg?_nc_cat=103&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeE73P-i0aSA6E4z1hyq5kXdVDEw6Ffiq-RUMTDoV-Kr5OM5JuXYijDcyYYJXcMSN11bmiEr0keioxU-a46JdB0N&_nc_ohc=yR7vJATfKhIAX-Ze8jb&_nc_ht=scontent.fchm1-1.fna&oh=00_AfBMRJJYRFUsB8ZMUSapdsidrdGG_WMMAJFGxiFcwPc9mQ&oe=639DE81F',
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
                avatar: datos['avatar'],
              );
            },
            itemCount: data.length,
            scrollDirection: Axis.vertical,
            controller: controller,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Reels',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.photo_camera_outlined,
                  size: 36,
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}

class TicktokWidget extends StatelessWidget {
  final String? img;
  final String? username;
  final String? avatar;

  const TicktokWidget(
      {super.key, this.img = '', this.username = '', this.avatar = ''});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.network(
          '$img',
          fit: BoxFit.cover,
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
                      CircleAvatar(
                        backgroundImage: NetworkImage('$avatar'),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        '$username',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: BorderSide(color: Colors.white, width: 1)),
                        onPressed: () {},
                        height: 35,
                        child: Text(
                          'Seguir',
                          style: TextStyle(fontSize: 18),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    '🎯 #Hola #Mundo #flutter',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Icon(Icons.audiotrack_rounded),
                      Text(
                        '$username • Audio orginal',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Icon(Icons.favorite_border, size: 32),
                      Text('24')
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Column(
                    children: [
                      Icon(Icons.messenger_outline_outlined, size: 32),
                      Text('24')
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Column(
                    children: [
                      Icon(Icons.near_me_outlined, size: 32),
                      Text('24')
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Column(
                    children: [
                      Icon(Icons.more_vert_outlined, size: 32),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 3, color: Colors.white)),
                    width: 35,
                    height: 35,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network('$avatar'),
                    ),
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
