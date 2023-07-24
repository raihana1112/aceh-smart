// ignore_for_file: unused_import, prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:app_tanaman_ui/pages/Auth%20View/login_page.dart';
import 'package:app_tanaman_ui/pages/Petani/home_page_petani.dart';
import 'package:charts_flutter_new/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

import '../components/navigation_button.dart';

class grafik_kebutuhan extends StatefulWidget {
  const grafik_kebutuhan({super.key});

  @override
  State<grafik_kebutuhan> createState() => _grafik_kebutuhanState();
}

class _grafik_kebutuhanState extends State<grafik_kebutuhan> {
  List<Kebutuhan> fromJson(String strJson) {
    final data = jsonDecode(strJson);
    return List<Kebutuhan>.from(data.map((i) => Kebutuhan.fromMap(i)));
  }

  List<Kebutuhan> hasil = [];
  Future<List<Kebutuhan>> getdata() async {
    List<Kebutuhan> list = [];
    final response = await http.get(
        Uri.parse("http://192.168.190.177/login_app/grafik_kebutuhan.php"));
    if (response.statusCode == 200) {
      list = fromJson(response.body);
    }
    return list;
  }

  static List<charts.Series<Kebutuhan, String>> chartData(
      List<Kebutuhan> data) {
    return [
      charts.Series<Kebutuhan, String>(
          id: 'Kebutuhan',
          domainFn: (Kebutuhan k, _) => k.bulan,
          measureFn: (Kebutuhan k, _) => k.kebutuhan,
          data: data)
    ];
  }

  @override
  void initState() {
    getdata().then((value) => hasil = value);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(right: 15.0, left: 15, top: 25, bottom: 25),
          child: ListView(children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            width: 3,
                            color: Color.fromARGB(255, 175, 243, 135),
                          ),
                          color: Color.fromARGB(255, 223, 255, 224)),
                      child: Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Icon(
                          Icons.arrow_back_ios_new_outlined,
                          color: Color.fromARGB(255, 175, 243, 135),
                        ),
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Text(
                  "Grafik Kebutuhan Komoditas",
                  style: GoogleFonts.inter(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),

            Row(
              children: [
                Text(
                  "Cabai",
                  style: GoogleFonts.inter(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            // ignore: sized_box_for_whitespace
            Container(
              height: 400,
              child: charts.BarChart(
                chartData(hasil),
                animate: true,
              ),
            ),
            SizedBox(
              height: 30,
            ),

            Row(
              children: [
                Text(
                  "Bawang",
                  style: GoogleFonts.inter(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            // ignore: sized_box_for_whitespace
            Container(
              height: 400,
              child: charts.BarChart(
                chartData(hasil),
                animate: true,
              ),
            ),
            SizedBox(
              height: 30,
            ),

            Row(
              children: [
                Text(
                  "Beras",
                  style: GoogleFonts.inter(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            // ignore: sized_box_for_whitespace
            Container(
              height: 400,
              child: charts.BarChart(
                chartData(hasil),
                animate: true,
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ]),
        ),
      ),
    );
  }
}

class Kebutuhan {
  final String bulan;
  final int kebutuhan;

  Kebutuhan({required this.bulan, required this.kebutuhan});

  factory Kebutuhan.fromMap(Map<String, dynamic> map) {
    return Kebutuhan(
        bulan: map["bulan"], kebutuhan: int.parse(map["kebutuhan"]));
  }
}
