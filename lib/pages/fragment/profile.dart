import 'package:flutter/material.dart';
import 'package:ibadah_yuk/widgets/drop_shadow.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                  const Text(
                    'Aylmer Ariéfsonn',
                    style: TextStyle(
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
              child: const Column(
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
                    value: 0.9,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 33),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'T I L A W A H',
                    style: TextStyle(
                      fontFamily: 'Euclid Circular B',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xFFC2B9B9)
                    ),
                  ),
                  Text(
                    'H A F A L A N',
                    style: TextStyle(
                        fontFamily: 'Euclid Circular B',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(0xFFC2B9B9)
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(left: 2, right: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFFEEECDF),
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    padding: const EdgeInsets.only(left: 21),
                    width: 161,
                    height: 87,
                    child: Row(
                      children: [
                        Image.asset('assets/icons/book.png', width: 43, height: 50.59),
                        const SizedBox(width: 8),
                        Container(
                          margin: const EdgeInsets.only(top: 11),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '569',
                                style: TextStyle(
                                  color: Color(0xFF333333),
                                  fontFamily: 'Euclid Circular B',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 33.9535,
                                  height: 1.2,
                                ),
                              ),
                              Text(
                                'Halaman',
                                style: TextStyle(
                                  color: Color(0xFF333333),
                                  fontFamily: 'Euclid Circular B',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 15.26,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFFEEECDF),
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    padding: const EdgeInsets.only(left: 21),
                    width: 161,
                    height: 87,
                    child: Row(
                      children: [
                        Image.asset('assets/icons/brain.png', width: 50, height: 49.99),
                        const SizedBox(width: 8),
                        Container(
                          margin: const EdgeInsets.only(top: 11),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '352',
                                style: TextStyle(
                                  color: Color(0xFF333333),
                                  fontFamily: 'Euclid Circular B',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 33.9535,
                                  height: 1.2,
                                ),
                              ),
                              Text(
                                'Halaman',
                                style: TextStyle(
                                  color: Color(0xFF333333),
                                  fontFamily: 'Euclid Circular B',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 15.26,
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
            const SizedBox(height: 12),
            SizedBox(
              width: 345,
              height: 45,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFFF0E8E8)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icons/submissions.png', width: 14.17, height: 14.17, color: const Color(0xFF5D5858)),
                    const SizedBox(width: 9.5),
                    const Text(
                      'Archived Submissions',
                      style: TextStyle(
                        color: Color(0xFF383333),
                        fontFamily: 'Euclid Circular B',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
