// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/SESION8/screens/amigospage.dart';
import 'package:flutter_application_1/SESION8/screens/bandejadeentrada.dart';
import 'package:flutter_application_1/SESION8/screens/homepages.dart';
import 'package:flutter_application_1/SESION8/screens/perfilpage.dart';

class NavegacionScreen extends StatefulWidget {
  const NavegacionScreen({super.key});

  @override
  State<NavegacionScreen> createState() => _NavegacionScreenState();
}

class _NavegacionScreenState extends State<NavegacionScreen> {
  int _selectindex = 0;
  static const List<Widget> _widgetOptions = [
    HomePages(),
    AmigosPage(),
    Text(
      '3',
      style: TextStyle(color: Colors.white, fontSize: 72),
    ),
    BandejaPage(),
    PerfilPage(),
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
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.people,
                size: 32,
              ),
              label: 'Amigos'),
          BottomNavigationBarItem(
              icon: Image.network(
                'https://i.ibb.co/ncfP6DY/button.png',
                width: 43,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.message,
                size: 32,
              ),
              label: 'Mensajes'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 32,
              ),
              label: 'Perfil'),
        ],
      ),
    );
  }
}
