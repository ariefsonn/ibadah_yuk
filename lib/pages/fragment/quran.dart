import 'package:flutter/material.dart';

class QuranPage extends StatefulWidget {
  const QuranPage({Key? key}) : super(key: key);

  @override
  State<QuranPage> createState() => _QuranPageState();
}

class _QuranPageState extends State<QuranPage> with TickerProviderStateMixin {
  static const TextStyle ts = TextStyle(
    color: Color(0xFFA7A1A1),
    fontFamily: 'Euclid Circular B',
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    fontSize: 24
  );
  late TabController _controller;

  @override
  void initState() {
    _controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFFBFBFB),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 48),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFF2F61AA),
                      Color(0xFF142846),
                    ]
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                  image: DecorationImage(
                    image: AssetImage('assets/images/back-his-quran.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                padding: const EdgeInsets.only(right: 50, left: 21),
                width: 345,
                height: 105,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/quran-image.png',
                      color: const Color(0xFF90A3BD),
                      width: 42,
                      height: 46.67,
                    ),
                    const SizedBox(width: 14),
                    Container(
                      padding: const EdgeInsets.only(top: 25,),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Terakhir Dibaca',
                            style: TextStyle(
                              color: Color(0xFF90A3BD),
                              fontFamily: 'Euclid Circular B',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            child: Text(
                              'QS. Al-An’am ; 57',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Euclid Circular B',
                                fontSize: 26,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 26),
              TabBar(
                controller: _controller,
                indicator: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(36)),
                  border: Border.all(width: 1),
                ),
                unselectedLabelColor: const Color(0xFFA7A1A1),
                labelColor: const Color(0xFF2B2525),
                tabs: const [
                  Tab(child: Text('Surah', style: ts,)),
                  Tab(child: Text('Juz', style: ts,)),
                  Tab(child: Text('Page', style: ts,)),
                ],
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: 345,
                height: 39,
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFF8F4F4),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16))
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset('assets/icons/search.png', width: 20, height: 20),
                    ),
                    label: const Text(
                      'Search...',
                      style: TextStyle(
                          color: Color(0xFFC6B5B5),
                          fontFamily: 'Euclid Circular B',
                          fontWeight: FontWeight.w500,
                          fontSize: 16
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'quick access',
                style: TextStyle(
                    color: Color(0xFFA69B9B),
                    fontFamily: 'Euclid Circular B',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                height: 33,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(24)),
                        border: Border.all(),
                      ),
                      child: const Center(
                        child: Text(
                          'Al Kahf',
                          style: TextStyle(
                            color: Color(0xFF252323),
                            fontFamily: 'Euclid Circular B',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            fontSize: 12.5574,
                          ),
                        ),
                      )
                    ),
                    const SizedBox(width: 12),
                    Container(
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(24)),
                          border: Border.all(),
                        ),
                        child: const Center(
                          child: Text(
                            'An Nahl',
                            style: TextStyle(
                              color: Color(0xFF252323),
                              fontFamily: 'Euclid Circular B',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.5574,
                            ),
                          ),
                        )
                    ),
                    const SizedBox(width: 12),
                    Container(
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(24)),
                          border: Border.all(),
                        ),
                        child: const Center(
                          child: Text(
                            'Al Mulk',
                            style: TextStyle(
                              color: Color(0xFF252323),
                              fontFamily: 'Euclid Circular B',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.5574,
                            ),
                          ),
                        )
                    ),
                    const SizedBox(width: 12),
                    Container(
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(24)),
                          border: Border.all(),
                        ),
                        child: const Center(
                          child: Text(
                            'Qaf',
                            style: TextStyle(
                              color: Color(0xFF252323),
                              fontFamily: 'Euclid Circular B',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.5574,
                            ),
                          ),
                        )
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _controller,
                  children: [
                    ListView(
                      children: [
                        Container(
                          width: 345,
                          height: 84,
                          padding: const EdgeInsets.only(left: 12, top: 14.76, bottom: 13.76),
                          decoration: const BoxDecoration(
                            color: Color(0xFFF8F4F4),
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                          ),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  Center(
                                    child: Image.asset('assets/icons/cover-id.png', width: 55.47, height: 55.47),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 25, top: 16),
                                    child: const Text(
                                      '1',
                                      style: TextStyle(
                                        color: Color(0xFF252323),
                                        fontFamily: 'Euclid Circular B',
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(width: 16.53),
                              SizedBox(
                                width: 180,
                                child: Container(
                                  margin: const EdgeInsets.only(top: 5),
                                  child:  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Al Fatihah',
                                        style: TextStyle(
                                          color: Color(0xFF252323),
                                          fontFamily: 'Euclid Circular B',
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        'Surah Pembuka  🕋',
                                        style: TextStyle(
                                          color: Color(0xFFA7A5A5),
                                          fontFamily: 'Euclid Circular B',
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                               Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'الفاتحة',
                                    style: TextStyle(
                                      color: Color(0xFF252323),
                                      fontFamily: 'Euclid Circular B',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 24,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    ListView(
                      children: [
                        Container(
                          width: 345,
                          height: 84,
                          padding: const EdgeInsets.only(left: 12, top: 14.76, bottom: 13.76),
                          decoration: const BoxDecoration(
                            color: Color(0xFFF8F4F4),
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                          ),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  Center(
                                    child: Image.asset('assets/icons/cover-id.png', width: 55.47, height: 55.47),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 25, top: 16),
                                    child: const Text(
                                      '1',
                                      style: TextStyle(
                                        color: Color(0xFF252323),
                                        fontFamily: 'Euclid Circular B',
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    ),
                                  )
                                ],
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                    ListView(
                      children: [
                        Container(
                          width: 345,
                          height: 84,
                          padding: const EdgeInsets.only(left: 12, top: 14.76, bottom: 13.76),
                          decoration: const BoxDecoration(
                            color: Color(0xFFF8F4F4),
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                          ),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  Center(
                                    child: Image.asset('assets/icons/cover-id.png', width: 55.47, height: 55.47),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 25, top: 16),
                                    child: const Text(
                                      '1',
                                      style: TextStyle(
                                        color: Color(0xFF252323),
                                        fontFamily: 'Euclid Circular B',
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    ),
                                  )
                                ],
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
