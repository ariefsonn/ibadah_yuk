import 'package:flutter/material.dart';

import 'package:sliding_up_panel/sliding_up_panel.dart';

class QCoursePage extends StatefulWidget {
  const QCoursePage({Key? key}) : super(key: key);

  @override
  State<QCoursePage> createState() => _QCoursePageState();
}

class _QCoursePageState extends State<QCoursePage> {
  PanelController _panelController = PanelController();
  @override
  void initState(){
    super.initState();
  }
  void togglePanel() => _panelController.isPanelOpen
      ? _panelController.close()
      : _panelController.open();
  Widget build(BuildContext context) {
    return Scaffold(

        body: SlidingUpPanel(
          controller: _panelController,
          maxHeight: 650,
      minHeight: 220,
      body: Container(
        padding: EdgeInsets.only(
          top: 20,
          right: 20
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/image/articlesback.png'))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
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
            SizedBox(
              height: 80,
            ),
            GestureDetector(
              onTap: (){},
              child:       Image.asset('assets/image/back_button.png'),
            )

          ],
        ),
            ),
panelBuilder: (controller){
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: togglePanel,
                  child: Center(
                    child:  Container(
                      margin: EdgeInsets.only(top: 15),
                      height: 5,
                      width: 90,
                      decoration:   BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.shade300
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child:
                Container(
                  padding: EdgeInsets.only(left: 3),

                  width: 166,
                  height: 36,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff867EE2)
                  ),
                  child: Row(
                    children: <Widget>[
                      Image.asset('assets/image/elips30.png',width: 31,height: 30,),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Sosial Budaya',
                      style: TextStyle(
                        fontFamily: 'Euclid Circular B',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),)
                    ],
                  ),
                )
                ),

                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text('Toleransi di Kampung\nSawah Bekasi',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 28,
                    fontFamily: 'Euclid Circular B'
                  ),),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: <Widget>[
                        Image.asset('assets/image/fire.png'),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Trending No.1',style: TextStyle(
                          fontFamily: 'Euclid Circular B',
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color(0xff909090)
                        ),)
                      ],
                    ),
                    Text('Today 4.32',style: TextStyle(
                        fontFamily: 'Euclid Circular B',
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color(0xff909090)
                    ),)
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Pilar Penting Bagi Kerukunan, Ketahanan, Kesatuan Nasional',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontFamily: 'Euclid Circular B'
                ),),
                SizedBox(
                  height: 10,
                ),

                Text('Kampung Sawah, Kecamatan Pondok Melati, Bekasi, ini adalah salah satu contohnya yang telah memelihara kerukunan antar umat beragama sejak zaman kerajaan di abad ke-4. Toleransi antarumat beragama disini sudah sangat kuat. Bahkan Kampung Sawah ini menjadi role model kehidupan sosial bermasyarakat baik di Indonesia.',
                style: TextStyle(
                  color: Color(0xff909090),
                  fontFamily: 'Euclid Circular B',
                  fontWeight: FontWeight.w400,
                  fontSize: 14
                ),),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  width: 260,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: Colors.blue,
                        width: 4
                      )
                    ),
                  ),
                  child: Text('"Toleransi diperlukan bukan hanya oleh kelompok minoritas, tapi setiap manusia. Sebab setiap manusia pada hakikatnya membutuhkan kehidupan yang harmoni."',style:
                    TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Euclid Circular B',
                      color: Color(0xff909090)
                    ),),
                )
              ],
            ),
          );
},
          borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
          margin: EdgeInsets.only(right: 10,left: 10),
          padding: EdgeInsets.only(left: 15,right: 15),
        ),

    );
  }
}