import 'package:flutter/material.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({
  super.key,
  required this.title1,
  required this.text1,
  required this.title2,
  required this.text2,

  required this.gradient1,
  required this.gradient2,
  });

  final String title1;
  final String text1;
  final String title2;
  final String text2;

  final Gradient gradient1;
  final Gradient gradient2;

  @override
  Widget build(BuildContext context) {
    return      Container(

        child: SizedBox(
          height: 150,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                padding:
                EdgeInsets.only(top: 15, left: 20, right: 40),
                alignment: Alignment.topLeft,
                width: 284.0,
                height: 130,
                decoration: BoxDecoration(
                  gradient:gradient1,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title1,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Euclid Circular B',
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      text1,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Euclid Circular B',
                          color: Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                padding:
                EdgeInsets.only(top: 15, left: 20, right: 40),
                alignment: Alignment.topLeft,
                width: 284.0,
                height: 130,
                decoration: BoxDecoration(
                  gradient: gradient2,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title2,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Euclid Circular B',
                          fontSize: 20,
                          color: Color(0xff201B1B)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                   text2,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Euclid Circular B',
                          color: Color(0xff201B1B)),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
        );
  }
}