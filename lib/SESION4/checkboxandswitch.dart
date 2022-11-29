import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckAndSwitch extends StatefulWidget {
  const CheckAndSwitch({super.key});

  @override
  State<CheckAndSwitch> createState() => _CheckAndSwitchState();
}

class _CheckAndSwitchState extends State<CheckAndSwitch> {
  bool isSwitched = true;
  bool isChecked = false;
  bool isSwitchedCupertino = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkbox & Swiftch'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                }),
            Checkbox(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value!;
                  });
                }),
            CupertinoSwitch(
                value: isSwitchedCupertino,
                onChanged: (value) {
                  setState(() {
                    isSwitchedCupertino = value;
                  });
                })
          ],
        ),
      ),
    );
  }
}
