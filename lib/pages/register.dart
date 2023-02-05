import 'package:flutter/material.dart';
import 'package:ibadah_yuk/widgets/gradient_text.dart';
import 'package:ibadah_yuk/widgets/button.dart';
import 'package:ibadah_yuk/widgets/input.dart';


class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Color(0xFFFBFBFB)),
        padding: const EdgeInsets.only(right: 25, left: 25, top: 109, bottom: 74),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  <Widget>[
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
SizedBox(
  height: 30,
),
            Text('Buat akun',
            style: TextStyle(fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 16 ,
                color: Color(0xFF969090),
                fontFamily: 'Euclid Circular B'),
            ),
            SizedBox(
              height: 30,
            ),

            Text('Email',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Euclid Circular B',
                fontWeight: FontWeight.w400,
                color: Colors.black
              ),
            ),
            SizedBox(
              height: 10,
            ),
         InputForm(
           icon: Icon(Icons.alternate_email_outlined, color: Color(0xFF575DFB),),
         ),
            SizedBox(
              height: 20,
            ),
            Text('Username',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Euclid Circular B',
                  fontWeight: FontWeight.w400,
                  color: Colors.black
              ),
            ),
            SizedBox(
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
             ),
           ),
            SizedBox(
              height: 20,
            ),
            Text('Password',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Euclid Circular B',
                  fontWeight: FontWeight.w400,
                  color: Colors.black
              ),
            ),
            SizedBox(
              height: 10,
            ),
         InputForm(
           icon: Icon(Icons.alternate_email_outlined, color: Color(0xFF575DFB),),
         ),
            SizedBox(
              height: 20,
            ),
           SignUp(text: 'Sign Up'),
            SizedBox(
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
                ), onTap: (){},),

              ],
            ),

          ],
        ),
      ),
    );
  }
}