import 'package:flutter/material.dart';
import 'package:ibadah_yuk/widgets/gradient_text.dart';
import 'package:ibadah_yuk/widgets/home_content.dart';
import 'package:hijri/digits_converter.dart';
import 'package:hijri/hijri_array.dart';
import 'package:hijri/hijri_calendar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  @override

  var _today = HijriCalendar.now();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBFBFB),
      body: Container(
        decoration: BoxDecoration(color: Color(0xFFFBFBFB)),
        padding: EdgeInsets.only(right: 5, left: 5, top: 45, bottom: 10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Assalamualaikum  👋',
                        style: TextStyle(
                          fontFamily: 'Euclid Circular B',
                          fontSize: 14,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF2883B7),
                        ),
                      ),
                      Text(
                        'Raffi Nauval',
                        style: TextStyle(
                            fontFamily: 'Euclid Circular B',
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff252323)),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 68,
                        height: 62,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(11)),
                        child: Image.asset('assets/images/kabah.png'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          top: 5,
                        ),
                        width: 68,
                        height: 62,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(11)),
                        child: Column(
                          children: <Widget>[
                            Text(
                              '8:03',
                              style: TextStyle(
                                  fontFamily: 'Euclid Circular B',
                                  fontSize: 23,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff252323)),
                            ),
                            Text(
                              '16 JAN',
                              style: TextStyle(
                                  fontFamily: 'Euclid Circular B',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff252323)),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),

              HomeContent(title1: 'Tilawah Harian',
                  text1: 'Anda telah membaca 5 halaman untuk tilawah hari ini',
                  title2: 'Hafalan Harian',
                  text2: 'Anda telah membaca 5 halaman untuk tilawah hari ini',
                  gradient1:
                  LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xff0067FF),
                      Color(0xff525B69),
                    ],
                  ), gradient2: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xffF8D725),
                      Color(0xff525B69),
                    ],
                  )),

              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 25,right: 25),
                  child:
              Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  color: Color(0xffF8D725),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))
                ),
                child: Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Subuh',
                        style: TextStyle(
                          fontFamily: 'Euclid Circular B',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0xff252323)
                        ),),

                        SizedBox(
                          height: 5,
                        ),
                        Text('04.25',
                          style: TextStyle(
                              fontFamily: 'Euclid Circular B',
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                            color: Color(0xff565454)
                          ),)
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Zuhur',
                          style: TextStyle(
                              fontFamily: 'Euclid Circular B',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xff252323)
                          ),),
                        SizedBox(
                          height: 5,
                        ),
                        Text('12.03',
                          style: TextStyle(
                              fontFamily: 'Euclid Circular B',
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: Color(0xff565454)
                          ),)
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Ashar',
                          style: TextStyle(
                              fontFamily: 'Euclid Circular B',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xff252323)
                          ),),
                        SizedBox(
                          height: 5,
                        ),
                        Text('15.27',
                          style: TextStyle(
                              fontFamily: 'Euclid Circular B',
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: Color(0xff565454)
                          ),)
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Maghrib',
                          style: TextStyle(
                              fontFamily: 'Euclid Circular B',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xff252323)
                          ),),
                        SizedBox(
                          height: 5,
                        ),
                        Text('18.17',
                          style: TextStyle(
                              fontFamily: 'Euclid Circular B',
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: Color(0xff565454)
                          ),)
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Isya',
                          style: TextStyle(
                              fontFamily: 'Euclid Circular B',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xff252323)
                          ),),
                        SizedBox(
                          height: 5,
                        ),
                        Text('19.32',
                          style: TextStyle(
                              fontFamily: 'Euclid Circular B',
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: Color(0xff565454)
                          ),)
                      ],
                    ),


                  ],
                ),
              )
              ),
              SizedBox(
                height: 10,
              ),
              Center(

                  child:
              Text(_today.toFormat("dd MMMM yyyy Hijriah"),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Euclid Circular B',
                fontWeight: FontWeight.w500,
                fontSize: 14
              ),)
              )
            ]),
      ),
    );
  }
}
