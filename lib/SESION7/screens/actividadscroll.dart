import 'package:flutter/material.dart';
import 'package:flutter_application_1/SESION7/widgets/plantillaactividad.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:tiktoklikescroller/tiktoklikescroller.dart';

class ActividadScrollPage extends StatefulWidget {
  const ActividadScrollPage({super.key});

/*   get testingController => null; */

  @override
  State<ActividadScrollPage> createState() => _ActividadScrollPageState();
}

class _ActividadScrollPageState extends State<ActividadScrollPage> {
  late Controller controller;
  final List<dynamic> data = [
    {
      'img':
          'https://www.chimboteonline.com/data/attachments/1/1036-0c504cfdce66060bde27994c3a118671.jpg',
      'title': 'Chimbote',
      'subtitle': 'Perú',
      'content':
          'Chimbote es una ciudad portuaria en la región de Ancash, en el norte de Perú. Es conocida por sus fábricas de pescado y como centro de transporte regional.'
    },
    {
      'img':
          'https://i0.wp.com/roadsandkingdoms.com/uploads/2019/05/shutterstock_1047718252.jpg?w=2400&quality=95&strip=color&ssl=1',
      'title': 'Lima',
      'subtitle': 'Perú',
      'content':
          'Lima es la capital de Perú ubicada en la árida costa del Pacífico del país. Pese a que su centro colonial se conserva, es una desbordante metrópolis y una de las ciudades más grandes de Sudamérica.'
    },
    {
      'img':
          'https://elperuano.pe/fotografia/thumbnail/2022/01/03/000145568M.jpg',
      'title': 'Cajamarca',
      'subtitle': 'Perú',
      'content':
          'Cajamarca es una ciudad del área montañosa del norte de Perú, en la cordillera de los Andes. La plaza principal histórica, la Plaza de Armas, está rodeada de arquitectura colonial barroca.'
    },
    {
      'img':
          'https://i0.wp.com/redhistoria.com/wp-content/uploads/2014/04/centro-de-cuzco.jpg?fit=800%2C534&ssl=1',
      'title': 'Cuzco',
      'subtitle': 'Perú',
      'content':
          'Cuzco es una ciudad de los Andes peruanos que fue la capital del Imperio Inca y es conocida por sus restos arqueológicos y la arquitectura colonial española. La Plaza de Armas es el centro de la ciudad antigua, con galerías, balcones de madera tallada y ruinas de murallas incas.'
    },
    {
      'img':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Huascaran_Huandoy_Chopicalqui_seen_from_Huaraz.JPG/1200px-Huascaran_Huandoy_Chopicalqui_seen_from_Huaraz.JPG',
      'title': 'Huaraz',
      'subtitle': 'Perú',
      'content':
          'Huaraz es una ciudad del valle Callejón de Huaylas en el norte de Perú. Es la capital de la región de Ancash y se ubica a más de 3,000 metros sobre el nivel del mar, con cimas nevadas de la Cordillera Blanca que forman un dramático horizonte en el este.'
    },
    {
      'img':
          'https://media.admagazine.com/photos/627e8456bdffe6073f3d1058/16:9/w_2560%2Cc_limit/GettyImages-1156132465.jpg',
      'title': 'Arequipa',
      'subtitle': 'Perú',
      'content':
          'Arequipa es la capital de la época colonial de la región de Arequipa en Perú. La rodean 3 volcanes y cuenta con edificios barrocos construidos de sillar, una piedra volcánica blanca.'
    },
    {
      'img':
          'https://iquitostravelguide.com/wp-content/uploads/2017/11/que-lugares-visitar-dentro-de-iquitos-1024x576.jpg',
      'title': 'Iquitos',
      'subtitle': 'Perú',
      'content':
          'Iquitos es una ciudad puerto peruana y una vía de acceso a los alojamientos en la selva y las villas del norte del Amazonas. El distrito de Belén es conocido por su enorme mercado callejero al aire libre y los palafitos rústicos sobre pilotes que bordean el río Itaya.'
    }
  ];

  Controller? testingController;

  @override
  initState() {
    controller = testingController ?? Controller()
      ..addListener((event) {
        _handleCallbackEvent(event.direction, event.success);
      });

    // controller.jumpToPosition(4);
    super.initState();
  }

  void _handleCallbackEvent(ScrollDirection direction, ScrollSuccess success,
      {int? currentIndex}) {
    print(
        "Scroll callback received with data: {direction: $direction, success: $success and index: ${currentIndex ?? 'not given'}}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: Text(
          'Ciudades del Perú',
          style: GoogleFonts.pacifico(fontSize: 32),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange[500],
      ),
      body: TikTokStyleFullPageScroller(
        contentSize: data.length,
        swipePositionThreshold: 2.0,
        swipeVelocityThreshold: 2000,
        animationDuration: const Duration(milliseconds: 400),
        controller: controller,
        builder: (BuildContext context, int index) {
          final dato = data[index];
          return ActividadPlantillaScreen(
            img: dato['img'],
            title: dato['title'],
            content: dato['content'],
          );
        },
      ),
    );
  }
}
