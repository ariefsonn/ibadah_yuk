import 'package:flutter/material.dart';
import 'package:ibadah_yuk/pages/course.dart';
import 'package:ibadah_yuk/pages/detail_article.dart';
import 'package:ibadah_yuk/widgets/gradient_text.dart';
import 'package:ibadah_yuk/widgets/button.dart';
import 'package:ibadah_yuk/widgets/input.dart';
import 'package:signed_spacing_flex/signed_spacing_flex.dart';
import 'package:another_stepper/another_stepper.dart';



class DetailMentorPage extends StatefulWidget {
  const DetailMentorPage({Key? key}) : super(key: key);

  @override
  State<DetailMentorPage> createState() => _DetailMentorPageState();
}

class _DetailMentorPageState extends State<DetailMentorPage> with TickerProviderStateMixin {
  List<StepperData> stepperData = [
    StepperData(
        title: StepperText(
          "1997-2003",
          textStyle: const TextStyle(
            color: Color(0xff8a8888),
            fontFamily: 'Euclid Circular B',
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        subtitle: StepperText("Darul Arqam, Muhammadiyah Garut",
          textStyle: const TextStyle(
            color: Color(0xff8a8888),
            fontFamily: 'Euclid Circular B',
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(30))),

        )),
    StepperData(
        title: StepperText(
          "2003-2005",
          textStyle: const TextStyle(
            color: Color(0xff8a8888),
            fontFamily: 'Euclid Circular B',
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        subtitle: StepperText("UIN Syarif Hidayatullah, Jakarta",
          textStyle: const TextStyle(
            color: Color(0xff8a8888),
            fontFamily: 'Euclid Circular B',
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(30))),

        )),
    StepperData(
        title: StepperText(
          "2005-2009",
          textStyle: const TextStyle(
            color: Color(0xff8a8888),
            fontFamily: 'Euclid Circular B',
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        subtitle: StepperText("(S1) Kuliyyah Dakwah Islamiyyah Tripoli, Libya",
          textStyle: const TextStyle(
            color: Color(0xff8a8888),
            fontFamily: 'Euclid Circular B',
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(30))),

        )),

  ];
  @override

  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body:

      Container(

        decoration: const BoxDecoration(color: Color(0xFFFBFBFB)),
        // padding: const EdgeInsets.only(right: 25, left: 25, top: 109, bottom: 74),



        child:    SignedSpacingColumn(
            spacing: -30.0,
            stackingOrder: StackingOrder.lastOnTop,
children: [
            Container(
              padding: EdgeInsets.only(top: 15,right: 15),
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/adihidayat.png'), fit: BoxFit.cover
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

padding: EdgeInsets.all(5),
              width: 350,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xffFFEBEB),
                borderRadius:BorderRadius.circular(30)),
              child:  TabBar(
                  controller: _tabController,

                  unselectedLabelStyle: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Euclid Circular B',
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                  unselectedLabelColor: Color(0xff3F3939),
                  labelColor: Color(0xff27258B),
                  labelStyle: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Euclid Circular B',
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                  indicatorColor: Colors.transparent,
                  tabs: [Tab(text: "Tentang"), Tab(text: "Tinjauan"),Tab(text: "Kursus")]),
              ),SizedBox(
    height: 70,
  ),
Container(
  height: 250,
    child:
  TabBarView(
    controller: _tabController,
      children: <Widget>[
        Column(
      children: <Widget>[
        Expanded(child:
        Container(
          padding: EdgeInsets.only(top: 20,left: 20,right: 20),
          width: 350,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffFFEBEB),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25))
          ),
          child: SingleChildScrollView(
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Tentang',style: TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: 'Euclid Circular B',
                fontSize: 32,
                color: Color(0xff323232)
              ),),
              SizedBox(
                height: 10,
              ),
              Text('Seorang ustadz muda asal Indonesia. Ia mempunyai pusat kajian Islam',style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Euclid Circular B',
                  fontSize: 16,
                  color: Color(0xff979494)
              ),),
              SizedBox(
                height: 15,
              ),
              Text('Pendidikan',style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Euclid Circular B',
                  fontSize: 32,
                  color: Color(0xff323232)
              ),),
              AnotherStepper(
                stepperList: stepperData,
                stepperDirection: Axis.vertical,
                iconWidth: 40,
                iconHeight: 40,
                activeBarColor: Colors.green,
                inActiveBarColor: Colors.grey,
                inverted: false,
                gap: 30,
                activeIndex: 3,
                barThickness: 5,
              ),

            ],
          ),
        )))
      ],
        ),
        Column(
          children: <Widget>[
            Expanded(child:
            Container(
                padding: EdgeInsets.only(top: 20,left: 20,right: 20),
                width: 350,
                height: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xffFFEBEB),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25))
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Tentang',style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Euclid Circular B',
                          fontSize: 32,
                          color: Color(0xff323232)
                      ),),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Seorang ustadz muda asal Indonesia. Ia mempunyai pusat kajian Islam',style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Euclid Circular B',
                          fontSize: 16,
                          color: Color(0xff979494)
                      ),),
                      SizedBox(
                        height: 15,
                      ),
                      Text('Pendidikan',style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Euclid Circular B',
                          fontSize: 32,
                          color: Color(0xff323232)
                      ),),
                      AnotherStepper(
                        stepperList: stepperData,
                        stepperDirection: Axis.vertical,
                        iconWidth: 40,
                        iconHeight: 40,
                        activeBarColor: Colors.green,
                        inActiveBarColor: Colors.grey,
                        inverted: false,
                        gap: 30,
                        activeIndex: 3,
                        barThickness: 5,
                      ),

                    ],
                  ),
                )))
          ],
        ),
        Column(
          children: <Widget>[
            Expanded(child:
            Container(
                padding: EdgeInsets.only(left: 10,right: 10),
                width: 350,
                height: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xffFFEBEB),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25))
                ),

                  child:

                  ListView(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                const CoursePage()),
                          );
                        },
                        child: Container(
                          padding:
                          EdgeInsets.only(top: 20, left: 25),
                          width: double.infinity,
                          height: 171,
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(
                                    "assets/image/coursesback.png"),
                                fit: BoxFit.fill,
                              )),
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
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
                      ),
                    ],

                  ),
                  )

                      )

          ],
        ),
      ])),

            

      ]
    )
      )

    );
  }
}