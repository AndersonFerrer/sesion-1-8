import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _currentSliderValue = 20;
  double _cupernum = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Widget'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Slider(
                value: _currentSliderValue,
                max: 100,
                divisions: 5,
                label: _currentSliderValue.round().toString(),
                onChanged: (value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                }),
            SizedBox(
              width: double.maxFinite,
              child: CupertinoSlider(
                activeColor: CupertinoColors.activeGreen,
                thumbColor: CupertinoColors.systemPink,
                min: 0,
                max: 100.0,
                value: _cupernum,
                onChanged: (value) {
                  setState(() {
                    _cupernum = value;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
