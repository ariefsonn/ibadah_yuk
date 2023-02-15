import 'package:flutter/material.dart';
import 'package:ibadah_yuk/widgets/gradient_text.dart';
import 'dart:core';
import 'package:intl/intl.dart';
import 'package:hijri/digits_converter.dart';
import 'package:hijri/hijri_array.dart';
import 'package:hijri/hijri_calendar.dart';

const List<int> _hafalan = <int>[
  1,2,3,4,5,6,7,8,9,10,
];

class ProgressPage extends StatefulWidget {
  const ProgressPage({super.key}): super();

  @override
  State<ProgressPage> createState() => _ProgressPageState();
}

class _ProgressPageState extends State<ProgressPage> {

  int _counterHafalan = 0;
  int _counterTilawah = 0;

  var _today = HijriCalendar.now();
  int hafalanValue = _hafalan.first;

  void incrementHafalan() {
    setState(() {
      _counterHafalan++;
    });
  }
  void decrementHafalan() {
    setState(() {
      _counterHafalan--;
      if (_counterHafalan < 0) {
        _counterHafalan = 0;
      }
    });
  }
  void incrementTilawah() {
    setState(() {
      _counterTilawah++;
    });
  }
  void decrementTilawah() {
    setState(() {
      _counterTilawah--;
      if (_counterTilawah < 0) {
        _counterTilawah = 0;
      }
    });
  }

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
                    Text ('16 Januari 2023',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontFamily: 'Euclid Circular B',
                          fontSize: 28,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff252323)
                      ),
                    ),
                    Text(_today.toFormat("dd MMMM yyyy Hijriyah"),
                      style: TextStyle(
                          fontFamily: 'Euclid Circular B',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff9D9B9B)
                      ),
                    ),
                  ],
                ),
                Text(formattedTime,
                  style: const TextStyle(
                      fontFamily: 'Euclid Circular B',
                      fontSize: 28,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff252323)
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(top: 15,left: 20, right: 30),
              width: double.infinity,
              height: 218,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/back2.png"),
                    fit: BoxFit.fill,
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text('Catatan Hafalan Harian',
                    style: TextStyle(
                        fontFamily: 'Euclid Circular B',
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        color: Color(0xff201B1B)
                    ),),
                  const SizedBox(height: 20),
                  const Text('Berapa banyak halaman yang telah anda hafal hari ini?',
                    style: TextStyle(
                        fontFamily: 'Euclid Circular B',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xff201B1B)
                    ),),
                  const SizedBox(height: 50),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          incrementHafalan();
                        },
                        child: Container(
                            width: 40,
                            height: 30,
                            decoration: BoxDecoration(
                                border: Border.all(width: 1, color: Color(0xff645757)),
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(40), bottomLeft: Radius.circular(40))
                            ),
                            child: const Icon(Icons.add,   color: Color(0xff645757))
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 2),
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Color(0xff645757))
                        ),
                        child: Text(_counterHafalan.toString(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Euclid Circular B',
                              color: Color(0xff201B1B)
                          ),
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                            decrementHafalan();
                          },
                          child: Container(
                              width: 40,
                              height: 30,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 1, color: Color(0xff645757)),
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(40), bottomRight: Radius.circular(40))
                              ),
                              child: const Icon(Icons.remove, color: Color(0xff645757)),
                          ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(top: 15,left: 20, right: 30),
              width: double.infinity,
              height: 218,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/back1.png"),
                    fit: BoxFit.fill,
                  ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Catatan Tilawah  Harian',
                    style: TextStyle(
                      fontFamily: 'Euclid Circular B',
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text('Berapa banyak halaman yang telah anda hafal hari ini?',
                    style: TextStyle(
                        fontFamily: 'Euclid Circular B',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.white
                    ),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                          onTap: (){
                            incrementTilawah();
                          },
                          child: Container(
                              width: 40,
                              height: 30,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 1, color: Colors.grey),
                                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(40), bottomLeft: Radius.circular(40))
                              ),
                              child: const Icon(Icons.add, color: Colors.white)
                          ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 2),
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey)
                        ),
                        child: Text(_counterTilawah.toString(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Euclid Circular B',
                              color: Colors.white
                          ),
                        ),
                      ),
                      GestureDetector(
                          onTap: (){
                            decrementTilawah();
                          },
                          child: Container(
                              width: 40,
                              height: 30,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 1, color: Colors.grey),
                                  borderRadius: const BorderRadius.only(topRight: Radius.circular(40), bottomRight: Radius.circular(40))
                              ),
                              child: const Icon(Icons.remove, color: Colors.white),
                          ),
                      ),
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