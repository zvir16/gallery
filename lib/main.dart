import 'package:flutter/material.dart';
import 'package:photo_gallery/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Image list'),
          ),
          body: HomeScreen(),
        ),
      ),
    );
  }
}
