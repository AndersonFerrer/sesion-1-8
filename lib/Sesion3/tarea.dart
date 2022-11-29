import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Tarea3 extends StatelessWidget {
  const Tarea3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hardware de mi PC',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 300,
                  width: 300,
                  child: FadeInImage(
                    placeholder: AssetImage('assets/loader.gif'),
                    image: AssetImage('assets/pc.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Card(
                margin:
                    EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
                color: Colors.black,
                child: ListTile(
                  leading: Image(
                      image: NetworkImage(
                          'https://dojiw2m9tvv09.cloudfront.net/23332/product/z490vulcan30503.jpg')),
                  title: Text(
                    'Gigabyte A520 - DS3H',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Card(
                margin:
                    EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
                color: Colors.black,
                child: ListTile(
                  leading: Image(
                      image: NetworkImage(
                          'https://www.infotec.com.pe/53485-home_default/procesador-amd-ryzen-5-2600-yd2600bbm6iaf-3-4ghz-19-mb-am4-oem.jpg')),
                  title: Text(
                    'AMD Ryzen 5 2600 3.4Ghz',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Card(
                margin:
                    EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
                color: Colors.black,
                child: ListTile(
                  leading: Image(
                      image: NetworkImage(
                          'https://www.impacto.com.pe/storage/products/1645717475.jpg')),
                  title: Text(
                    'Memoria Ram 16gb Corsair Vengeance RGB Pro',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Card(
                margin:
                    EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
                color: Colors.black,
                child: ListTile(
                  leading: Image(
                      image: NetworkImage(
                          'https://www.tecnofertas.pe/wp-content/uploads/2021/09/61ianRm82UL._AC_SL1000_.jpg')),
                  title: Text(
                    'GigaByte RTX 2060 6GB',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Card(
                margin:
                    EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
                color: Colors.black,
                child: ListTile(
                  leading: Image(
                      image: NetworkImage(
                          'https://images.pcel.com/mp/Hardware-Fuentes-de-Poder-Gigabyte-GP-P550B-364168-AJ3dK0VZgJ8jSJuw.jpg')),
                  title: Text(
                    'GigaByte P550B 80+ Bronze',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Card(
                margin:
                    EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
                color: Colors.black,
                child: ListTile(
                  leading: Image(
                      image: NetworkImage(
                          'https://imagenes.deltron.com.pe/images/productos/on-line/items/large/ss/dh/ssdhp2lu80aa.jpg')),
                  title: Text(
                    'HP SSD 500GB M.2 5700',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Card(
                margin:
                    EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
                color: Colors.black,
                child: ListTile(
                  leading: Image(
                      image: NetworkImage(
                          'https://cyccomputer.pe/30480-large_default/disco-duro-1tb-seagate-barracuda-sata3-pnst1000dm010.jpg')),
                  title: Text(
                    'SEAGATE HDD 1TB 7200rpm',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
