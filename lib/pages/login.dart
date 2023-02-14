import 'package:flutter/material.dart';
import 'package:ibadah_yuk/widgets/gradient_text.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import 'navbar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  void saveSession(name, id) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString("name", name);
    await pref.setString('id', id);
    await pref.setBool('is_login', true);

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => NavBar()),
    );
  }

  void checkLogin() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var islogin = pref.getBool("is_login");
    if (islogin != null && islogin) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => NavBar(),
        ), (route) => false,
      );
    }
  }

  @override
  void initState() {
    checkLogin();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Color(0xFFFBFBFB)),
        padding: const EdgeInsets.only(right: 25, left: 25, top: 109, bottom: 74),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Assalamualaikum 🙌',
              style: TextStyle(
                fontFamily: 'Euclid Circular B',
                fontSize: 16,
                fontStyle: FontStyle.normal,
                color: Color(0xFF7C7B7B),
              ),
            ),
            const Text(
              'Selamat datang di',
              style: TextStyle(
                color: Color(0xFF322F2F),
                fontFamily: 'Euclid Circular B',
                fontSize: 24,
                fontStyle: FontStyle.normal,
              ),
            ),
            const GradientText(
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
            const SizedBox(height: 14),
            const Text(
              'Masuk untuk melanjutkan',
              style: TextStyle(
                color: Color(0xFF969090),
                fontFamily: 'Euclid Circular B',
                fontStyle: FontStyle.normal,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 26),
            const Text(
              'Email',
              style: TextStyle(
                color: Color(0xFF000000),
                fontFamily: 'Euclid Circular B',
                fontStyle: FontStyle.normal,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 6),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  borderSide: BorderSide(color: Color(0xFF575DFB), width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  borderSide: BorderSide(color: Color(0xFF575DFB)),
                ),
                prefixIcon: Icon(Icons.alternate_email_outlined, color: Color(0xFF575DFB)),
                filled: true,
                fillColor: Colors.white,
              ),
              controller: _email,
            ),
            const SizedBox(height: 12),
            const Text(
              'Password',
              style: TextStyle(
                color: Color(0xFF000000),
                fontFamily: 'Euclid Circular B',
                fontStyle: FontStyle.normal,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 6),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  borderSide: BorderSide(color: Color(0xFF575DFB), width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  borderSide: BorderSide(color: Color(0xFF575DFB)),
                ),
                prefixIcon: Icon(Icons.lock_outline_rounded, color: Color(0xFF575DFB)),
                filled: true,
                fillColor: Colors.white,
              ),
              obscureText: true,
              controller: _password,
            ),
            const SizedBox(height: 24),
            const Text(
              'Forgot Password?',
              style: TextStyle(
                decoration: TextDecoration.underline,
                color: Color(0xFF575DFB),
                fontSize: 12,
                fontStyle: FontStyle.normal,
                fontFamily: 'Euclid Circular B',
              ),
            ),
            const SizedBox(height: 53),
            SizedBox(
              width: 343,
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _submit();
                  });
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF575DFB)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                    ),
                  ),
                ),
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Center(
              child: Text(
                'O  R',
                style: TextStyle(
                  color: Color(0xFFCECECE),
                  fontFamily: 'Euclid Circular B',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 28),
            Padding(
              padding: const EdgeInsets.only(right: 110, left: 110),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset('assets/icons/apple.png', width: 36, height: 36),
                  Image.asset('assets/icons/google.png', width: 36, height: 36),
                ],
              ),
            ),
            const SizedBox(height: 46),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Don’t have an account?',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Euclid Circular B',
                    fontStyle: FontStyle.normal,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(width: 3),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Color(0xFF3A37B1),
                      fontFamily: 'Euclid Circular B',
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _submit() async {
    final response = await http.post(
      Uri.parse('http://10.50.50.2:88/login.php'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8'
      },
      body: jsonEncode(<String, String>{
        'email': _email.text,
        'password': _password.text,
      }),
    );

    // debugPrint(_email.text);
    // debugPrint(_password.text);
    // debugPrint(response.headers.toString());
    // debugPrint(response.statusCode.toString());
    print(response.body);

    if (response.statusCode == 200) {
      var output = jsonDecode(response.body);
      saveSession(output['nama'], output['id']);
    } else {
      Exception('Failed to Create');
    }
  }


}