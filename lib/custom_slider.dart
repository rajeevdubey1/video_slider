import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_slider/progress_value_provider.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({super.key});

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {

  void _onValueChanged(double val) {
    Provider.of<ProgressValueProvider>(context, listen: false).progress = val;
  }

  @override
  Widget build(BuildContext context) {

final progress = Provider.of<ProgressValueProvider>(context).progress;

    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(vertical: 30),
      child: Slider(value: progress, onChanged: _onValueChanged),
    );
  }
}
