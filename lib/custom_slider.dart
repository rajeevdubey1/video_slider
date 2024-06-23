import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({super.key});

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  var _sliderValue = 0.1;

  void _onValueChanged(double val) {
    setState(() {
      _sliderValue = val;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(vertical: 30),
      child: Slider(value: _sliderValue, onChanged: _onValueChanged),
    );
  }
}
