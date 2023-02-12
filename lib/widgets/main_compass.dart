// import 'package:flutter/material.dart';
// import 'package:ibadah_yuk/widgets/compass.dart';
// import 'package:flutter_qiblah/flutter_qiblah.dart';
//
//
// void main() => runApp(CompassMain());
//
// class CompassMain extends StatefulWidget {
//   @override
//   _CompassMainState createState() => _CompassMainState();
// }
//
// class _CompassMainState extends State<CompassMain> {
//   final _deviceSupport = FlutterQiblah.androidDeviceSensorSupport();
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: FutureBuilder(
//           future: _deviceSupport,
//           builder: (_, AsyncSnapshot<bool?> snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return const Center(
//                 child: CircularProgressIndicator(),
//               );
//             }
//             if (snapshot.hasError) {
//               return Center(
//                 child: Text("Error: ${snapshot.error.toString()}"),
//               );
//             }
//             if (snapshot.data!) {
//               return QiblahCompass();
//             } else {
//               return const Center(
//                 child: Text("Your device is not supported"),
//               );
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
