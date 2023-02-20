import 'package:flutter/material.dart';
import 'package:ibadah_yuk/widgets/gradient_text.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'detail_article.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'navbar.dart';

class ArticleMainPage extends StatefulWidget {
  const ArticleMainPage({Key? key}) : super(key: key);

  @override
  State<ArticleMainPage> createState() => _ArticleMainPageState();
}

class _ArticleMainPageState extends State<ArticleMainPage> {



  @override
  void initState() {

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 2000,
          decoration: const BoxDecoration(color: Color(0xFFFBFBFB)),
          padding: const EdgeInsets.only( top: 80, bottom: 74),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            Row(
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const NavBar()),);
                  },
                  child: Image.asset('assets/image/back_button.png'),
                ),
SizedBox(
  width: 125,
),
                Text('Hukum',style: TextStyle(
                  fontFamily: 'Euclid Circular B',
                  fontSize: 24,
                  fontWeight: FontWeight.w500
                ),)
              ],
            ),

              Container(
                padding: EdgeInsets.only(
                  right: 20,
                  left: 20
                ),
                height: 1000,
                  child:
              ListView(

                children: [
                  Expanded(child:
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                DetailArticlePage(),
                          ));
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 5),
                      width: double.infinity,
                      height: 171,
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 1,
                            blurRadius: 1,
                            color:
                            Color.fromRGBO(0, 0, 0, 0.1),
                            offset: Offset(0, 3),
                            blurStyle: BlurStyle.normal,
                          )
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: <Widget>[

                          Container(
                            padding: EdgeInsets.only(
                                left: 10, top: 15,right: 10,
                            ),
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  // padding: EdgeInsets.only(left: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment
                                        .spaceBetween,
                                    children: <Widget>[
                                      Row(
                                        children: [
                                          Image.asset(
                                              'assets/image/fire.png'),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'Trending',
                                            style: TextStyle(
                                                fontFamily:
                                                'Euclid Circular B',
                                                fontWeight:
                                                FontWeight
                                                    .w500,
                                                fontSize: 12,
                                                color: Color(
                                                    0xff222222)),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 80,
                                      ),
                                      Text(
                                        'Today,4.32',
                                        style: TextStyle(
                                            fontWeight:
                                            FontWeight
                                                .w500,
                                            fontSize: 12,
                                            fontFamily:
                                            'Euclid Circular B',
                                            color: Color(
                                                0xff7C7272)),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'Toleransi di Kampung\nSawah Bekasi',
                                  style: TextStyle(
                                      fontFamily:
                                      'Euclid Circular B',
                                      fontSize: 16,
                                      fontWeight:
                                      FontWeight.w500),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Menjaga harmoni kerukunan\nantar umat beragama...',
                                  style: TextStyle(
                                      fontFamily:
                                      'Euclid Circular B',
                                      fontSize: 12,
                                      fontWeight:
                                      FontWeight.w400,
                                      color:
                                      Color(0xff7C7272)),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment
                                      .spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Image.asset(
                                            'assets/image/elips.png'),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Raffi Nauval',
                                          style: TextStyle(
                                            fontFamily:
                                            'Euclid Circular B',
                                            fontSize: 12,
                                            fontWeight:
                                            FontWeight
                                                .w500,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 100,
                                    ),
                                    Icon(
                                      Icons.share,
                                      size: 20,
                                      color:
                                      Color(0xff918F8F),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Image.asset(
                              'assets/image/articles.png')
                        ],
                      ),
                    ),

                  ),
                  ),
                ],

              )
              )
            ],
          ),
        ),
      ),
    );
  }


}