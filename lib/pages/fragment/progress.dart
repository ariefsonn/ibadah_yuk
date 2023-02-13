import 'package:flutter/material.dart';
import 'package:ibadah_yuk/widgets/gradient_text.dart';
import 'dart:core';
import 'package:intl/intl.dart';
import 'package:hijri/digits_converter.dart';
import 'package:hijri/hijri_array.dart';
import 'package:hijri/hijri_calendar.dart';

class ProgressPage extends StatefulWidget {

  const ProgressPage({Key? key}) : super(key: key);



  @override
  State<ProgressPage> createState() => _ProgressPageState();

}

class _ProgressPageState extends State<ProgressPage> {
  @override

  var _today = HijriCalendar.now();

  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedTime = DateFormat('kk:mm:ss').format(now);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Color(0xFFFBFBFB)),
        padding: const EdgeInsets.only(right: 25, left: 25, top: 45, bottom: 74),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: <Widget>[
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[

        Text('16 Januari 2023',
        textAlign: TextAlign.start,
        style: TextStyle(
          fontFamily: 'Euclid Circular B',
          fontSize: 28,
          fontWeight: FontWeight.w400,
          color: Color(0xff252323)
        ),),
        Text(_today.toFormat("dd MMMM yyyy Hijriyah"),style: TextStyle(
            fontFamily: 'Euclid Circular B',
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xff9D9B9B)
        ),
        ),
      ],
    ),
    Text(formattedTime,
    style: TextStyle(
        fontFamily: 'Euclid Circular B',
        fontSize: 28,
        fontWeight: FontWeight.w400,
        color: Color(0xff252323)
    ),
    ),
  ],
),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(top: 15,left: 20,
              right: 30),
              width: double.infinity,
              height: 218,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage("assets/images/back2.png"),
                    fit: BoxFit.fill,
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Catatan Tilawah Harian',
                    style: TextStyle(
                        fontFamily: 'Euclid Circular B',
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        color: Color(0xff201B1B)
                    ),),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Berapa banyak halaman yang telah anda hafal hari ini?',
                    style: TextStyle(
                        fontFamily: 'Euclid Circular B',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xff201B1B)
                    ),),
                  SizedBox(
                    height: 50,
                  ),
                  Row(

                    children: <Widget>[
                      GestureDetector(
                          onTap: (){},


                          child: Container(
                              width: 40,
                              height: 30,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 1, color: Color(0xff645757)),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40), bottomLeft: Radius.circular(40))
                              ),
                              child:  Icon(Icons.add,   color: Color(0xff645757))
                          )),

                      Container(
                        padding: EdgeInsets.only(top: 2),
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Color(0xff645757))
                        ),
                        child: Text('1',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Euclid Circular B',
                              color: Color(0xff201B1B)
                          ),),
                      ),
                      GestureDetector(
                          onTap: (){},


                          child: Container(
                              width: 40,
                              height: 30,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 1, color: Color(0xff645757)),
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(40), bottomRight: Radius.circular(40))
                              ),
                              child:  Icon(Icons.remove,
                                color: Color(0xff645757))
                          )),






                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
        Container(
          padding: EdgeInsets.only(top: 15,left: 20,
              right: 30),
          width: double.infinity,
          height: 218,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage("assets/images/back1.png"),
                fit: BoxFit.fill,
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Catatan Hafalan Harian',
                style: TextStyle(
                    fontFamily: 'Euclid Circular B',
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                    color: Colors.white
                ),),
              SizedBox(
                height: 20,
              ),
              Text('Berapa banyak halaman yang telah anda hafal hari ini?',
                style: TextStyle(
                    fontFamily: 'Euclid Circular B',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.white
                ),),

               SizedBox(
                 height: 50,
               ),
               Row(

                children: <Widget>[
                  GestureDetector(
                   onTap: (){},
        
    
                      child: Container(
                        width: 40,
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(40), bottomLeft: Radius.circular(40))
                        ),
                    child:  Icon(Icons.add,   color: Colors.white)
                  )),

                  Container(
                    padding: EdgeInsets.only(top: 2),
                    width: 50,
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey)
                    ),
                    child: Text('1',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Euclid Circular B',
                      color: Colors.white
                    ),),
                  ),
                  GestureDetector(
                      onTap: (){},


                      child: Container(
                          width: 40,
                          height: 30,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.only(topRight: Radius.circular(40), bottomRight: Radius.circular(40))
                          ),
                          child:  Icon(Icons.remove,
                          color: Colors.white,)
                      )),
                  
                 




                ],
              ),
            ],
          ),
        ),
          ],
        ),
      ),
    );
  }
}