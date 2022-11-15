import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _currentSliderValue = 40;
  double _cupernum = 0;

  double _inicio = 0;
  double _fin = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider widget'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Slider(
              value: _currentSliderValue,
              max: 100,
              divisions: 6,
              label: _currentSliderValue.round().toString(),
              onChanged: (value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
            SizedBox(
              width: double.maxFinite,
              child: CupertinoSlider(
                min: 0.0,
                max: 100.0,
                activeColor: CupertinoColors.systemBlue,
                thumbColor: CupertinoColors.activeOrange,
                value: _cupernum,
                onChanged: (value) {
                  setState(() {
                    _cupernum = value;
                  });
                },
              ),
            ),
            RangeSlider(
              values: RangeValues(_inicio, _fin),
              activeColor: const Color.fromARGB(255, 157, 255, 28),
              inactiveColor: Colors.amber,
              min: 0.0,
              max: 100.0,
              onChanged: (value) {
                setState(() {
                  _inicio = value.start;
                  _fin = value.end;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
