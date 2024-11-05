import 'package:flutter/material.dart';
import 'package:spotify_remake2/profile.dart';
import 'package:spotify_remake2/scaffold_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: ScaffoldWidget(),
    );
  }
}
