import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_slider/progress_value_provider.dart';

class VideoProgress extends StatefulWidget {
  const VideoProgress({super.key});

  @override
  State<VideoProgress> createState() => _VideoProgressState();
}

class _VideoProgressState extends State<VideoProgress> {

  @override
  Widget build(BuildContext context) {
    
    final progress = Provider.of<ProgressValueProvider>(context).progress * 100;

    return Center(
      child: Text('Video progress\n${progress.toStringAsFixed(2)}%',
      textAlign: TextAlign.center, style:const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
    );
  }
}
