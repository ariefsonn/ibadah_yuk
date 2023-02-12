import 'package:flutter/material.dart';
import 'package:ibadah_yuk/pages/course.dart';
import 'package:ibadah_yuk/pages/fragment/home.dart';
import 'package:ibadah_yuk/pages/fragment/profile.dart';
import 'package:ibadah_yuk/pages/fragment/progress.dart';
import 'package:ibadah_yuk/pages/fragment/quran.dart';
import 'package:ibadah_yuk/pages/login.dart';
import 'package:ibadah_yuk/pages/navbar.dart';
import 'package:ibadah_yuk/pages/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: CoursePage(),
    );
  }
}