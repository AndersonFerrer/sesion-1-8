import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String? texto;
  final Function? onPressed;

  const ButtonWidget({super.key, this.texto = '', this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      minWidth: double.infinity,
      elevation: 0,
      color: Colors.blue[400],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Text(texto!,
          style: const TextStyle(color: Colors.white, fontSize: 18)),
      onPressed: () => onPressed!(),
    );
  }
}
