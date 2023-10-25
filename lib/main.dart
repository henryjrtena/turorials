import 'package:flutter/material.dart';
import 'package:tutorials/features/homepage2.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Codex',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage2(),
    ),
  );
}
