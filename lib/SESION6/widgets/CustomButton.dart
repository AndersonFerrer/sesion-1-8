import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.aumentarB,
      required this.disminuirB,
      required this.resetearB});
  final Function aumentarB;
  final Function disminuirB;
  final Function resetearB;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () => aumentarB(),
          tooltip: 'Aumentar',
          heroTag: const Text('btn1'),
          child: const Icon(
            Icons.add,
            size: 32,
          ),
        ),
        FloatingActionButton(
          onPressed: () => disminuirB(),
          tooltip: 'Disminuir',
          heroTag: const Text('btn1'),
          child: const Icon(
            Icons.remove,
            size: 32,
          ),
        ),
        FloatingActionButton(
          onPressed: () => resetearB(),
          tooltip: 'Resetear',
          heroTag: const Text('btn1'),
          child: const Icon(
            Icons.restart_alt_outlined,
            size: 32,
          ),
        ),
      ],
    );
  }
}
