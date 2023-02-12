import 'package:flutter/material.dart';
import 'package:ibadah_yuk/widgets/gradient_text.dart';
import 'package:ibadah_yuk/widgets/button.dart';
import 'package:ibadah_yuk/widgets/input.dart';


class DetailMentorPage extends StatefulWidget {
  const DetailMentorPage({Key? key}) : super(key: key);

  @override
  State<DetailMentorPage> createState() => _DetailMentorPageState();
}

class _DetailMentorPageState extends State<DetailMentorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Color(0xFFFBFBFB)),
        // padding: const EdgeInsets.only(right: 25, left: 25, top: 109, bottom: 74),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  <Widget>[
            Container(
              padding: EdgeInsets.only(top: 15,right: 15),
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/adihidayat.png')
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment : MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            border: Border.all(width: 1.0,color: Color(0xffEDEDED)),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Image.asset('assets/image/share.png'),
                      )
                    ],
                  ),
                  GestureDetector(
                    child: Image.asset('assets/image/back_button.png'),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children : <Widget>[
                  Text('Ustadz Adi\nHidayat',style:
                    TextStyle(
                      fontStyle: FontStyle.normal,
                      fontFamily: 'Euclid Circular B',
                      fontWeight: FontWeight.w500,
                      fontSize: 32,
                      color: Colors.white
                    ),),
                            SizedBox(
                              height: 10,
                            ),

    Text('IbadahYuk Mentor',
      style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          fontFamily: 'Euclid Circular B',
          color: Color(0xff909090)
      ),)




                          ]),

              ),

          ],
        ),
      ),
            Container(

              width: 100,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blue
              ),
            ),
      ]
    )
      )
    );
  }
}