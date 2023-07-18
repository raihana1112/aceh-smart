// ignore_for_file: unused_import
import 'package:app_tanaman_ui/pages/Start%20View/Start3.dart';
import 'package:app_tanaman_ui/pages/Start%20View/start1.dart';
import 'package:app_tanaman_ui/pages/Start%20View/start2.dart';
import 'package:app_tanaman_ui/pages/status_tanaman.dart';
import 'package:app_tanaman_ui/pages/status_tanaman2.dart';
import 'package:app_tanaman_ui/pages/rekomendasi_penentuan_tanam.dart';
import 'package:app_tanaman_ui/pages/rekomendasi_kapan_tanam.dart';
import 'package:flutter/material.dart';
import 'pages/Auth View/login_page.dart';
import 'pages/Petani/home_page_petani.dart';

Future main() async {//
  //xWidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  // Widget build(BuildContext context) => Scaffold(
  //       body: StreamBuilder(
  //         stream: FirebaseAuth.instance.authStateChanges(),
  //         builder: (context, snapshot) {
  //           if (snapshot.hasData) {
  //             return const home_page();
  //           } else {
  //             return const LoginPage();a
  //           }
  //         },
  //       ),
  //     );

  // signOut() {
  //   FirebaseAuth.instance.signOut();
  // }
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Petani Aceh Smart',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Start1());
        
  }
}
