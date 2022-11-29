// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class BandejaPage extends StatelessWidget {
  const BandejaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<dynamic> product = [
      {
        'name': 'CocaCola',
        'descripcion': '500ml',
        'Pcompra': '2.00',
        'Pventa': '3.00'
      },
      {
        'name': 'InkaCola',
        'descripcion': '500ml',
        'Pcompra': '2.30',
        'Pventa': '3.00'
      },
      {
        'name': 'Guarana',
        'descripcion': '500ml',
        'Pcompra': '1.00',
        'Pventa': '1.50'
      },
      {
        'name': 'Oreo',
        'descripcion': '500u',
        'Pcompra': '3.00',
        'Pventa': '4.00'
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('DataTable'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: DataTable(
            border: TableBorder.all(color: Colors.white, width: 5),
            columns: [
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('Descripcion')),
              DataColumn(label: Text('P.Compra')),
              DataColumn(label: Text('P.Venta')),
            ],
            rows: product
                .map(
                  (e) => DataRow(
                    cells: [
                      DataCell(Text(e['name'])),
                      DataCell(Text(e['descripcion'])),
                      DataCell(Text(e['Pcompra'])),
                      DataCell(Text(e['Pventa'])),
                    ],
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
