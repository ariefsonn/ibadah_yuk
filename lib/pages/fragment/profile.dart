import 'package:flutter/material.dart';
import 'package:ibadah_yuk/widgets/drop_shadow.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:async/async.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key, required this.name}) : super();
  final String name;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 900,
          decoration: const BoxDecoration(
            color: Color(0xFFFBFBFB),
          ),
          padding: const EdgeInsets.only(left: 24, right: 24, top: 52),
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(36)),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      offset: Offset(0, 1),
                      blurStyle: BlurStyle.normal,
                    )
                  ],
                  image: DecorationImage(
                    image: AssetImage('assets/images/profile-bi-img.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                width: 340,
                height: 369,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 31),
                    ClipOval(
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(48), // Image radius
                        child: Image.network(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Elon_Musk_Royal_Society_%28crop2%29.jpg/1280px-Elon_Musk_Royal_Society_%28crop2%29.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 19),
                    Text(
                      widget.name,
                      style: const TextStyle(
                        color: Color(0xFF252323),
                        fontFamily: 'Euclid Circular B',
                        fontStyle: FontStyle.normal,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '123456@gmail.com',
                      style: TextStyle(
                        color: Color(0xFFB1B0B0),
                        fontFamily: 'Euclid Circular B',
                        fontStyle: FontStyle.normal,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 28),
                    Image.asset('assets/icons/google.png', width: 19.6, height: 20),
                    const SizedBox(height: 14),
                    const Text(
                      'Signed in with Google Accounts',
                      style: TextStyle(
                        fontFamily: 'Euclid Circular B',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: Color(0xFFB1B0B0),
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      '<3 Years of Journey',
                      style: TextStyle(
                        fontFamily: 'Euclid Circular B',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: Color(0xFFB1B0B0),
                      ),
                    ),
                    const Text(
                      'Since Jule 2022',
                      style: TextStyle(
                        fontFamily: 'Euclid Circular B',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: Color(0xFFB1B0B0),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.only(top: 20, left: 27.5, right: 28.6),
                decoration: const BoxDecoration(
                  color: Color(0xFFEEECDF),
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                ),
                width: 345,
                height: 113,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Quran Completion Progress',
                      style: TextStyle(
                          fontFamily: 'Euclid Circular B',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          fontSize: 20
                      ),
                    ),
                    SizedBox(height: 17),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Progress',
                          style: TextStyle(
                            color: Color(0xFFC2B9B9),
                            fontFamily: 'Euclid Circular B',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          '90%',
                          style: TextStyle(
                            color: Color(0xFFC2B9B9),
                            fontFamily: 'Euclid Circular B',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    LinearProgressIndicator(
                      backgroundColor: Color(0xFFD9D9D9),
                      valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF9FB131)),
                      value: 90 / 100,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Container(
                width: 345,
                height: 86,
                decoration: const BoxDecoration(
                  color: Color(0xFFFBFBFB),
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                  border: Border.fromBorderSide(BorderSide(width: 1, color: Color(0xFFDDDBDB))),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 14, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'T I L A W A H',
                        style: TextStyle(
                          color: Color(0xFFC2C1C1),
                          fontFamily: 'Euclid Circular B',
                          fontStyle: FontStyle.normal,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 11.06),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/icons/tilawah.png', width: 29.52, height: 26.31),
                          const SizedBox(width: 13.48),
                          const SizedBox(
                            width: 205,
                            child: Text(
                              'Juz 30, Page 12',
                              style: TextStyle(
                                color: Color(0xFF2D2D2D),
                                fontFamily: 'Euclid Circular B',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          const Text(
                            '592/604',
                            style: TextStyle(
                              color: Color(0xFFAFAFAF),
                              fontFamily: 'Euclid Circular B',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                width: 345,
                height: 90,
                decoration: const BoxDecoration(
                  color: Color(0xFFFBFBFB),
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                  border: Border.fromBorderSide(BorderSide(width: 1, color: Color(0xFFDDDBDB))),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 14, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'H A F A L A N',
                        style: TextStyle(
                          color: Color(0xFFC2C1C1),
                          fontFamily: 'Euclid Circular B',
                          fontStyle: FontStyle.normal,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 11.06),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/icons/hafalan.png', width: 33, height: 40),
                          const SizedBox(width: 13.48),
                          const SizedBox(
                            width: 205,
                            child: Text(
                              'Juz 27, Page 5',
                              style: TextStyle(
                                color: Color(0xFF2D2D2D),
                                fontFamily: 'Euclid Circular B',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          const Text (
                            '423/604',
                            style: TextStyle(
                              color: Color(0xFFAFAFAF),
                              fontFamily: 'Euclid Circular B',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
