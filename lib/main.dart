import 'package:flutter/material.dart';

void main() {
  runApp(const TizenApp());
}

class TizenApp extends StatelessWidget {
  const TizenApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const VideoPage(),
    );
  }
}

class VideoPage extends StatelessWidget {
  const VideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video Page'),
      ),
      body: const Center(
        child: Text('Video Page'),
      ),
    );
  }
}