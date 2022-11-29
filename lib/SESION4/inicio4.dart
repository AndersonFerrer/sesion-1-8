import 'package:flutter/material.dart';
import 'package:flutter_application_1/SESION4/checkboxandswitch.dart';
import 'package:flutter_application_1/SESION4/dropdownbutton.dart';
import 'package:flutter_application_1/SESION4/emailpasswidget.dart';
import 'package:flutter_application_1/SESION4/infintyscrollwidget.dart';
import 'package:flutter_application_1/SESION4/listviewwidget.dart';
import 'package:flutter_application_1/SESION4/sliderwidget.dart';
import 'package:flutter_application_1/SESION4/textformfieldwidget.dart';
import 'package:flutter_application_1/widgetsdemo.dart';

class Inicio4 extends StatelessWidget {
  const Inicio4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sesion 4'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ButtonWidget(
              texto: 'Texfield',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TextFormFieldWidget()),
                );
              },
            ),
            ButtonWidget(
              texto: 'Email & Password',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EmailPassWidget()));
              },
            ),
            ButtonWidget(
              texto: 'Checkbox & Switch',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CheckAndSwitch()));
              },
            ),
            ButtonWidget(
              texto: 'Slider',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SliderWidget()));
              },
            ),
            ButtonWidget(
              texto: 'DrowDownButton',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Dropdownbuttonformfiel()),
                );
              },
            ),
            ButtonWidget(
              texto: 'ListView',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Listviewidget()),
                );
              },
            ),
            ButtonWidget(
              texto: 'Infinity Scroll',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Infinityscrollwidget()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
