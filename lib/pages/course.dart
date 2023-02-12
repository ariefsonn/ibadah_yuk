import 'package:flutter/material.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> with TickerProviderStateMixin {
  int selectedIndex = 0;
  late TabController controller;
  TextStyle ts = const TextStyle(
    color: Color(0xFF3F3939),
    fontFamily: 'Euclid Circular B',
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    fontSize: 16,
  );

  @override
  void initState() {
    controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Color(0xFFFBFBFB)),
        child: Padding(
          padding: const EdgeInsets.only(top: 72),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/icons/back-icon.png', width: 47, height: 93),
                  const SizedBox(width: 80),
                  const Text(
                    'Quranic Course',
                    style: TextStyle(
                      fontFamily: 'Euclid Circular B',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.only(right: 24, left: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Memahami Al-Qur’an',
                          style: TextStyle(
                            color: Color(0xFFB5A7A7),
                            fontFamily: 'Euclid Circular B',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(width: 40),
                        Container(
                          width: 97,
                          height: 36,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color(0xFF867EE2),
                                Color(0xFF6962B4),
                                Color(0xFF7C76C7),
                              ]
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                '3',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Euclid Circular B',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(width: 3),
                              Image.asset('assets/icons/youtube.png', width: 33, height: 20),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Container(
                      width: 345,
                      height: 237,
                      decoration: const BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.all(Radius.circular(24))
                      ),
                      child: const Center(
                        child: Text('Video Player Disini!'),
                      ),
                    ),
                    const SizedBox(height: 24),
                    MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemExtent: 40,
                        scrollDirection: Axis.vertical,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Material(
                            type: MaterialType.transparency,
                            child: ListTile(
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(12))
                              ),
                              title: const Text(
                                'Part 1:   Cara Mudah Pahami Al-Qur’an',
                                style: TextStyle(
                                  fontFamily: 'Euclid Circular B',
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              tileColor: Colors.transparent,
                              selectedColor: const Color(0xFF4E4A4A),
                              selectedTileColor: const Color(0xFFEAEBEC),
                              selected: index == selectedIndex,
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                });
                              },
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFFF9F1F1),
                        borderRadius: BorderRadius.all(Radius.circular(36)),
                      ),
                      width: 345,
                      height: 29,
                      child: TabBar(
                        controller: controller,
                        indicator: const BoxDecoration(
                            color: Color(0xFFEFEEEE),
                            borderRadius: BorderRadius.all(Radius.circular(36))
                        ),
                        labelColor: const Color(0xFF3F3939),
                        tabs: [
                          Tab(child: Text('Overview', style: ts)),
                          Tab(child: Text('Mentor', style: ts)),
                          Tab(child: Text('Descriptio', style: ts)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      height: 91,
                      child: TabBarView(
                        controller: controller,
                        children: [
                          Container(
                            width: 345,
                            height: 91,
                            decoration: const BoxDecoration(
                              color: Color(0xFFFFEBEB),
                              borderRadius: BorderRadius.all(Radius.circular(36)),
                            ),
                            padding: const EdgeInsets.only(left: 12, top: 8.37, bottom: 11),
                            child: Row(
                              children: [
                                ClipOval(
                                  child: SizedBox.fromSize(
                                    size: const Size.fromRadius(35), // Image radius
                                    child: Image.network(
                                      'https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2022/07/08/876774867.jpg',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 345,
                            height: 91,
                            decoration: const BoxDecoration(
                              color: Color(0xFFFFEBEB),
                              borderRadius: BorderRadius.all(Radius.circular(36)),
                            ),
                            padding: const EdgeInsets.only(left: 12, top: 8.37, bottom: 11),
                            child: Row(
                              children: [
                                Stack(
                                  children: [
                                    ClipOval(
                                      child: SizedBox.fromSize(
                                        size: const Size.fromRadius(35), // Image radius
                                        child: Image.network(
                                          'https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2022/07/08/876774867.jpg',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 45, top: 50),
                                      child: Image.asset('assets/icons/purple-check.png'),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 17),
                                Container(
                                  margin: const EdgeInsets.only(top: 4),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Ustadz Adi Hidayat',
                                        style: TextStyle(
                                          color: Color(0xFF414040),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                      const Text(
                                        'Fikih, Qur’an, Akhlak',
                                        style: TextStyle(
                                          color: Color(0xFF858080),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        children: [
                                          const Text(
                                            '5,0',
                                            style: TextStyle(
                                              color: Color(0xFF47515C),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              fontStyle: FontStyle.normal,
                                            ),
                                          ),
                                          const SizedBox(width: 12),
                                          Image.asset('assets/icons/ratings.png', width: 11.98, height: 11.9),
                                          const SizedBox(width: 4.05),
                                          Image.asset('assets/icons/ratings.png', width: 11.98, height: 11.9),
                                          const SizedBox(width: 4.05),
                                          Image.asset('assets/icons/ratings.png', width: 11.98, height: 11.9),
                                          const SizedBox(width: 4.05),
                                          Image.asset('assets/icons/ratings.png', width: 11.98, height: 11.9),
                                          const SizedBox(width: 4.05),
                                          Image.asset('assets/icons/ratings.png', width: 11.98, height: 11.9),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 345,
                            height: 91,
                            decoration: const BoxDecoration(
                              color: Color(0xFFFFEBEB),
                              borderRadius: BorderRadius.all(Radius.circular(36)),
                            ),
                          ),
                        ],
                      ),
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
