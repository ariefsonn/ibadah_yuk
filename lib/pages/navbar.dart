import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ibadah_yuk/pages/fragment/home.dart';
import 'package:ibadah_yuk/pages/fragment/profile.dart';
import 'package:ibadah_yuk/pages/fragment/progress.dart';
import 'package:ibadah_yuk/pages/fragment/quran.dart';
import 'package:async/async.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

  late SharedPreferences prefs;
  String? _name;
  String? _email;
  String? _date;


  Future<void> setName() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      _name = prefs.getString('name') ?? 'name';
      _email = prefs.getString('email') ?? 'email';
      _date = prefs.getString('date') ?? 'date';
    });
  }

  @override
  void initState() {
    setName();
    print(_name);
    print(_name?.length);
    super.initState();
  }

  int? _selectedIndex = 0;
  late final List<Widget> _pageOptions = <Widget>[
    HomePage(name: _name!.toString()),
    const QuranPage(),
    const ProgressPage(),
    ProfilePage(
      name: _name!.toString(),
      email: _email!.toString(),
      date: _date!.toString(),
    ),
  ];

  void onItemTapped(int index) async {
    setState(() {
      _selectedIndex = index;
    });
    await setName();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions.elementAt(_selectedIndex!),
      extendBody: true,
      bottomNavigationBar: FloatingNavbar(

        width: 320,
        height: 93,
        iconSize: 28,
        items: [
          FloatingNavbarItem(
            icon: Icons.home_rounded,
          ),
          FloatingNavbarItem(
            icon: Icons.my_library_books_rounded,
          ),
          FloatingNavbarItem(
            icon: Icons.insert_chart,
          ),
          FloatingNavbarItem(
            icon: Icons.people,
          ),
        ],
        backgroundColor: const Color(0xFFD2D0D7),
        selectedItemColor: const Color(0xFF27258B),
        unselectedItemColor: const Color(0xFF948787),
        selectedBackgroundColor: Colors.transparent,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(15),
          topLeft: Radius.circular(15),
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15)
        ),
        padding: const EdgeInsets.only(bottom: 0.000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, top: 7),
        margin: const EdgeInsets.symmetric(horizontal: 7, vertical: 20),
        currentIndex: _selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}
