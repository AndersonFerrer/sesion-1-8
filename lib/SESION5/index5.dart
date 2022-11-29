import 'package:flutter/material.dart';

class Inicio5 extends StatelessWidget {
  const Inicio5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarea - Sesión 5'),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Expanded(
              child: Container(
            height: double.infinity,
            color: Color.fromARGB(255, 33, 33, 33),
            child: const Center(
                child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Tengo 18 Años',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 32),
                textAlign: TextAlign.center,
              ),
            )),
          )),
          Expanded(
              flex: 2,
              child: Container(
                height: double.infinity,
                color: Colors.black,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Title(
                          color: Colors.black,
                          child: const Text(
                            'Anderson Paolo Ferrer Ysla',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 32),
                            textAlign: TextAlign.center,
                          )),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://dt2sdf0db8zob.cloudfront.net/wp-content/uploads/2019/12/9-Best-Online-Avatars-and-How-to-Make-Your-Own-for-Free-image1-5.png')),
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
