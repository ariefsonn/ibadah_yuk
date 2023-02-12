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

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  var articles = Text(
    'articles',
    style: TextStyle(color: Colors.black, fontFamily: 'Euclid Circular B'),
  );

  var _today = HijriCalendar.now();

  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
        backgroundColor: Color(0xffFBFBFB),
        body: SingleChildScrollView(
        child:
        Container(
          height: 1068,
            decoration: BoxDecoration(color: Color(0xFFFBFBFB)),
            padding: EdgeInsets.only(right: 5, left: 5, top: 30),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                    Widget>[
              Container(
                padding: EdgeInsets.only(right: 20, left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          child: Image.asset('assets/image/kabah.png'),
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
              ),
              SizedBox(
                height: 20,
              ),
              HomeContent(
                  title1: 'Tilawah Harian',
                  text1: 'Anda telah membaca 5 halaman untuk tilawah hari ini',
                  title2: 'Hafalan Harian',
                  text2: 'Anda telah membaca 5 halaman untuk tilawah hari ini',
                  gradient1: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xff0067FF),
                      Color(0xff525B69),
                    ],
                  ),
                  gradient2: LinearGradient(
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
                  padding: EdgeInsets.only(left: 25, right: 25),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    width: double.infinity,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Color(0xffF8D725),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15))),
                    child: Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Subuh',
                              style: TextStyle(
                                  fontFamily: 'Euclid Circular B',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color(0xff252323)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '04.25',
                              style: TextStyle(
                                  fontFamily: 'Euclid Circular B',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Color(0xff565454)),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Zuhur',
                              style: TextStyle(
                                  fontFamily: 'Euclid Circular B',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color(0xff252323)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '12.03',
                              style: TextStyle(
                                  fontFamily: 'Euclid Circular B',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Color(0xff565454)),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Ashar',
                              style: TextStyle(
                                  fontFamily: 'Euclid Circular B',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color(0xff252323)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '15.27',
                              style: TextStyle(
                                  fontFamily: 'Euclid Circular B',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Color(0xff565454)),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Maghrib',
                              style: TextStyle(
                                  fontFamily: 'Euclid Circular B',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color(0xff252323)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '18.17',
                              style: TextStyle(
                                  fontFamily: 'Euclid Circular B',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Color(0xff565454)),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Isya',
                              style: TextStyle(
                                  fontFamily: 'Euclid Circular B',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color(0xff252323)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '19.32',
                              style: TextStyle(
                                  fontFamily: 'Euclid Circular B',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Color(0xff565454)),
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Center(
                  child: Text(
                _today.toFormat("dd MMMM yyyy Hijriah"),
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Euclid Circular B',
                    fontWeight: FontWeight.w500,
                    fontSize: 14),
              )),
              SizedBox(
                height: 20,
              ),
              TabBar(
                  controller: _tabController,
                  unselectedLabelStyle: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Euclid Circular B',
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                  labelColor: Colors.black,
                  labelStyle: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Euclid Circular B',
                      fontWeight: FontWeight.w500,
                      fontSize: 24),
                  indicatorColor: Colors.transparent,
                  tabs: [Tab(text: "article"), Tab(text: "courses")]),
              Container(
                  width: double.infinity,
                  height: 600,
                  child: Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: TabBarView(controller: _tabController, children: <
                          Widget>[
                        Container(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 15, left: 5),
                                width: double.infinity,
                                height: 171,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      color: Color.fromRGBO(0, 0, 0, 0.1),
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
                                      padding : EdgeInsets.only(left: 10),
                                      child:
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          // padding: EdgeInsets.only(left: 15),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
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
                                                            FontWeight.w500,
                                                        fontSize: 12,
                                                        color:
                                                            Color(0xff222222)),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 50,
                                              ),
                                              Text(
                                                'Today,4.32',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12,
                                                    fontFamily:
                                                        'Euclid Circular B',
                                                    color: Color(0xff7C7272)),
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
                                              fontFamily: 'Euclid Circular B',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          'Menjaga harmoni kerukunan\nantar umat beragama...',
                                          style: TextStyle(
                                              fontFamily: 'Euclid Circular B',
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff7C7272)),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
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
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: 70,
                                            ),
                                            Icon(Icons.share,
                                            size: 20,
                                            color: Color(0xff918F8F),)
                                          ],
                                        )
                                      ],
                                    ),
                                    ),
                                    Image.asset('assets/image/articles.png')
                                  ],
                                ),
                              ),
SizedBox(
  height: 30,
),
                              Text('explore',
                              style: TextStyle(
                                fontFamily: 'Euclid Circular B',
                                fontWeight: FontWeight.w500,
                                fontSize: 24
                              ),),
                      SizedBox(
                        height : 10,
                      ),

                      Container(

                          child: SizedBox(
                            height: 120,
                            child: ListView(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                Container(
                                                                alignment: Alignment.center,
                                  width: 90,
                                  height: 120,

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(
                                  image: AssetImage('assets/image/explore1.png')
                                ),

                                  ),
                                  child: Text('Hukum',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Euclid Circular B',
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white
                                  ),
                                  textAlign: TextAlign.center,)
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                    alignment: Alignment.center,
                                    width: 90,
                                    height: 120,

                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(
                                          image: AssetImage('assets/image/explore2.png')
                                      ),

                                    ),
                                    child: Text('Sejarah',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'Euclid Circular B',
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white
                                      ),
                                      textAlign: TextAlign.center,)
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                    alignment: Alignment.center,
                                    width: 90,
                                    height: 120,

                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(
                                          image: AssetImage('assets/image/explore3.png')
                                      ),

                                    ),
                                    child: Text('Ibadah',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'Euclid Circular B',
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white
                                      ),
                                      textAlign: TextAlign.center,)
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                    alignment: Alignment.center,
                                    width: 90,
                                    height: 120,

                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(
                                          image: AssetImage('assets/image/explore1.png')
                                      ),

                                    ),
                                    child: Text('Akhlak',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'Euclid Circular B',
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white
                                      ),
                                      textAlign: TextAlign.center,)
                                ),
                                SizedBox(
                                  width: 10,
                                ),

                              ],
                            ),
                          )
                      ),
                            ])),


                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 20, left: 25),
                            width: double.infinity,
                            height: 171,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/image/coursesback.png"),
                                  fit: BoxFit.fill,
                                )),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Image.asset('assets/image/fire.png'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Trending',
                                      style: TextStyle(
                                          fontFamily: 'Euclid Circular B',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Color(0xffE8DFDF)),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  'Cara mudah pahami\nAl-Quran',
                                  style: TextStyle(
                                    fontFamily: 'Euclid Circular B',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffE8DFDF),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Pada course ini, anda akan\ndiajarkan cara...',
                                  style: TextStyle(
                                    fontFamily: 'Euclid Circular B',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                          ),

                          SizedBox(
                            height: 20,
                          ),
                          Text('categories',
                            style: TextStyle(
                                fontFamily: 'Euclid Circular B',
                                fontWeight: FontWeight.w500,
                                fontSize: 24
                            ),),
                          SizedBox(
                            height : 10,
                          ),

                          Container(

                              child: SizedBox(
                                height: 220,
                                child: ListView(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(bottom: 10,
                                      left: 10),
                                        alignment: Alignment.bottomLeft,
                                        width: 168,
                                        height: 220,

                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),
                                          image: DecorationImage(
                                              image: AssetImage('assets/image/categories1.png'),
                                            fit: BoxFit.fill
                                          ),

                                        ),
                                        child: Text('Tahfidzul\nQuran',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontFamily: 'Euclid Circular B',
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white
                                          ),
                                          textAlign: TextAlign.start,)
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                        padding: EdgeInsets.only(bottom: 10,
                                            left: 10,
                                            top: 10,right: 10),
                                        alignment: Alignment.topRight,
                                        width: 168,
                                        height: 220,

                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),
                                          image: DecorationImage(
                                              image: AssetImage('assets/image/categories2.png'),
                                              fit: BoxFit.fill
                                          ),

                                        ),
                                        child: Text('Tahfidzul\nQuran',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontFamily: 'Euclid Circular B',
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white
                                          ),
                                          textAlign: TextAlign.end,)
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                        padding: EdgeInsets.only(bottom: 10,
                                            left: 10),
                                        alignment: Alignment.bottomLeft,
                                        width: 168,
                                        height: 220,

                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),
                                          image: DecorationImage(
                                              image: AssetImage('assets/image/categories1.png'),
                                              fit: BoxFit.fill
                                          ),

                                        ),
                                        child: Text('Tahfidzul\nQuran',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontFamily: 'Euclid Circular B',
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white
                                          ),
                                          textAlign: TextAlign.start,)
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                        padding: EdgeInsets.only(bottom: 10,
                                            left: 10,
                                        top: 10,right: 10),
                                        alignment: Alignment.topRight,
                                        width: 168,
                                        height: 220,

                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),
                                          image: DecorationImage(
                                              image: AssetImage('assets/image/categories2.png'),
                                              fit: BoxFit.fill
                                          ),

                                        ),
                                        child: Text('Tahfidzul\nQuran',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontFamily: 'Euclid Circular B',
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white
                                          ),
                                          textAlign: TextAlign.end,)
                                    ),

                                  ],
                                ),
                              )
                          ),
                        ]),
                      ])))
            ]))));
  }
}
