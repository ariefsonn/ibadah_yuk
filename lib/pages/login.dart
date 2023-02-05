import 'package:flutter/material.dart';
import 'package:ibadah_yuk/widgets/gradient_text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Color(0xFFFBFBFB)),
        padding: const EdgeInsets.only(right: 25, left: 25, top: 109, bottom: 74),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Text(
              'Assalamualaikum 🙌',
              style: TextStyle(
                fontFamily: 'Euclid Circular B',
                fontSize: 16,
                fontStyle: FontStyle.normal,
                color: Color(0xFF7C7B7B),
              ),
            ),
            Text(
              'Selamat datang di',
              style: TextStyle(
                color: Color(0xFF322F2F),
                fontFamily: 'Euclid Circular B',
                fontSize: 24,
                fontStyle: FontStyle.normal,
              ),
            ),
            GradientText(
              text: 'ibadahyuk',
              gradient: LinearGradient(colors: [
                Color(0xFF5B7744),
                Color(0xFF8FDB54),
              ]),
              style: TextStyle(
                fontFamily: 'Euclid Circular B',
                fontSize: 24,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}