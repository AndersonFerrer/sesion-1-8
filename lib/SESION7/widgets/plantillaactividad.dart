import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActividadPlantillaScreen extends StatelessWidget {
  const ActividadPlantillaScreen(
      {super.key, this.img = '', this.title = '', this.content = ''});
  final String img;
  final String title;
  final String content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 400,
            width: 600,
            child: Image.network(
              img,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  Text(
                    title,
                    style: GoogleFonts.ubuntu(
                        fontSize: 48, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  /* Text(
                    subtitle,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ), */
                  Text(
                    content,
                    style: const TextStyle(color: Colors.grey, fontSize: 16),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: SizedBox(
              height: 60,
              width: 200,
              child: MaterialButton(
                onPressed: () {},
                elevation: 10,
                color: Colors.orange[500],
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: const Text(
                  'Visitar',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
