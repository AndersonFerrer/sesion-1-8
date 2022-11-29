// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/SESION8/screens/reelspage.dart';

class NavegacionReels extends StatefulWidget {
  const NavegacionReels({super.key});

  @override
  State<NavegacionReels> createState() => _NavegacionReelsState();
}

class _NavegacionReelsState extends State<NavegacionReels> {
  int _selectindex = 0;
  static const List<Widget> _widgetOptions = [
    Text(
      '1',
      style: TextStyle(color: Colors.white, fontSize: 72),
    ),
    Text(
      '2',
      style: TextStyle(color: Colors.white, fontSize: 72),
    ),
    ReelsPages(),
    Text(
      '4',
      style: TextStyle(color: Colors.white, fontSize: 72),
    ),
    Text(
      '5',
      style: TextStyle(color: Colors.white, fontSize: 72),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions[_selectindex]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        elevation: 0,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectindex,
        fixedColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _selectindex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 32,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 32,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.ondemand_video_rounded), label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_outlined,
                size: 32,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://scontent.fchm1-1.fna.fbcdn.net/v/t39.30808-6/277368748_4254987277938186_776529483703659197_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeG0F7G7Xoozobb20QnrJ_bCqa2vtRM1tZepra-1EzW1l_foMC0ye7rw-XXLHTePlG-ioAgf6ekDwNsDEdWNKDF0&_nc_ohc=oKBZteOhJe8AX_LuCQ7&_nc_ht=scontent.fchm1-1.fna&oh=00_AfDCObqZpt9-JMpZ4HTVbfyJZzOYY7ltNuZwnxHlmq_T3Q&oe=637C0AE6')),
              label: ''),
        ],
      ),
    );
  }
}
