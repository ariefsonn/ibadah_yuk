import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ibadah_yuk/pages/login.dart';
import 'package:ibadah_yuk/pages/navbar.dart';
import 'package:ibadah_yuk/widgets/gradient_text.dart';
import 'package:ibadah_yuk/widgets/button.dart';
import 'package:ibadah_yuk/widgets/input.dart';
import 'package:http/http.dart' as http;


class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);


  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final TextEditingController _email = TextEditingController();
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();

  Future<void> createUser() async {
    final response = await http.post(
      Uri.parse('http://10.50.50.2:88/register.php'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': _email.text,
        'username': _username.text,
        'password': _password.text,
      }),
    );

    print(response.body);
    print(_email.text);

    if (response.statusCode == 200) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginPage()));

    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception('Failed to create album.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SingleChildScrollView(
      child:
        Container(
      height: 1000,
        decoration: const BoxDecoration(color: Color(0xFFFBFBFB)),
        padding: const EdgeInsets.only(right: 25, left: 25, top: 109, bottom: 74),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  <Widget>[
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
            const SizedBox(
  height: 30,
),
            const Text('Buat akun',
            style: TextStyle(fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 16 ,
                color: Color(0xFF969090),
                fontFamily: 'Euclid Circular B'),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text('Email',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Euclid Circular B',
                fontWeight: FontWeight.w400,
                color: Colors.black
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InputForm(
              controller: _email,
              icon: Icon(Icons.alternate_email_outlined, color: Color(0xFF575DFB),),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('Username',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Euclid Circular B',
                  fontWeight: FontWeight.w400,
                  color: Colors.black
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InputForm(
             icon: Padding(
               padding: const EdgeInsets.all(10.0),
               child: Image.asset(
                 'assets/image/user.png',
                 width: 1,
                 height: 25,
                 fit: BoxFit.fill,
               ),
             ), controller: _username,
           ),
            const SizedBox(
              height: 20,
            ),
            const Text('Password',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Euclid Circular B',
                  fontWeight: FontWeight.w400,
                  color: Colors.black
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InputForm(
              icon: Icon(Icons.lock_outline_rounded, color: Color(0xFF575DFB),), controller: _password,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 343,
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    createUser();
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
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Already have an account?',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Euclid Circular B',
                    fontStyle: FontStyle.normal,
                    fontSize: 16,
                  ),
                ),
                SizedBox(width: 3),
                GestureDetector(child: Text(
                  'Sign in',
                  style: TextStyle(
                    color: Color(0xFF3A37B1),
                    fontFamily: 'Euclid Circular B',
                    fontStyle: FontStyle.normal,
                    fontSize: 16,
                  ),
                ), onTap: (){

                },),

              ],
            ),
          ],
        ),
      ),
      )
    );
  }
}


