// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AmigosPage extends StatelessWidget {
  const AmigosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Table(
          border: TableBorder.all(color: Colors.white),
          children: [
            TableRow(children: [
              Text('Producto'),
              Text('P.Venta'),
              Text('P.Compra'),
            ]),
            TableRow(children: [
              Text('Producto'),
              Text('P.Venta'),
              Text('P.Compra'),
            ]),
            TableRow(children: [
              Text('Producto'),
              Text('P.Venta'),
              Text('P.Compra'),
            ]),
            TableRow(children: [
              Text('Producto'),
              Text('P.Venta'),
              Text('P.Compra'),
            ]),
          ],
        ),
      ),
    );
  }
}
