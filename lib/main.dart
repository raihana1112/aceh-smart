// ignore_for_file: unused_import
import 'package:app_tanaman_ui/pages/Auth%20View/daftar_akun_petani.dart';
import 'package:app_tanaman_ui/pages/Grafik/grafik_kebutuhan.dart';
import 'package:app_tanaman_ui/pages/Grafik/grafik_keseluruhan_ab.dart';
import 'package:app_tanaman_ui/pages/Grafik/grafik_keseluruhan_bna.dart';
import 'package:app_tanaman_ui/pages/Grafik/grafik_keseluruhan_lhok.dart';
import 'package:app_tanaman_ui/pages/Grafik/grafik_stock.dart';
import 'package:app_tanaman_ui/pages/Pemerintah/home_page_pemerintah.dart';
import 'package:app_tanaman_ui/pages/Start%20View/Start3.dart';
import 'package:app_tanaman_ui/pages/Start%20View/start1.dart';
import 'package:app_tanaman_ui/pages/Start%20View/start2.dart';
import 'package:app_tanaman_ui/pages/data_komuditas.dart';
import 'package:app_tanaman_ui/pages/rekomendasi_kapan_tanam.dart';
import 'package:app_tanaman_ui/pages/rekomendasi_penentuan_tanam.dart';
import 'package:flutter/material.dart';

import 'pages/Auth View/login_page.dart';
import 'pages/Petani/home_page_petani.dart';

Future main() async {
  //
  //xWidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Petani Aceh Smart',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginPage());
  }
}
