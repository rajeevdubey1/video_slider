import 'package:flutter/material.dart';

class VideoProgress extends StatefulWidget {
  const VideoProgress({super.key});

  @override
  State<VideoProgress> createState() => _VideoProgressState();
}

class _VideoProgressState extends State<VideoProgress> {
  final progress = 10.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Video progress\n${progress.toStringAsFixed(2)}%',
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    );
  }
}
