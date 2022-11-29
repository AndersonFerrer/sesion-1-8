import 'package:flutter/material.dart';
import 'package:flutter_application_1/SESION6/widgets/CustomButton.dart';
import 'package:google_fonts/google_fonts.dart';

class Home6 extends StatefulWidget {
  const Home6({super.key});

  @override
  State<Home6> createState() => _Home6State();
}

class _Home6State extends State<Home6> {
  int numero = 0;

  void incrementarNum() {
    setState(() {
      numero++;
    });
  }

  void disminuirNum() {
    setState(() {
      numero--;
    });
  }

  void resetearNum() {
    setState(() {
      numero = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(
          'Sesion 6',
          style: GoogleFonts.satisfy(fontSize: 48),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/perfil.jpg'),
                radius: 100,
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Nombre: ',
                    style: GoogleFonts.satisfy(fontSize: 48),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Anderson',
                    style: GoogleFonts.satisfy(fontSize: 48),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Apellido: ',
                    style: GoogleFonts.satisfy(fontSize: 48),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Ferrer',
                    style: GoogleFonts.satisfy(fontSize: 48),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Text(
                'Contador',
                style: GoogleFonts.lobster(fontSize: 48),
              ),
              Text(
                '$numero',
                style: GoogleFonts.pacifico(fontSize: 42),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                  aumentarB: () => incrementarNum(),
                  disminuirB: () => disminuirNum(),
                  resetearB: () => resetearNum())
            ],
          ),
        ),
      ),
    );
  }
}
