// ignore_for_file: unused_import, prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:app_tanaman_ui/pages/Auth%20View/login_page.dart';
import 'package:app_tanaman_ui/pages/Petani/home_page_petani.dart';
import 'package:charts_flutter_new/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

import '../components/navigation_button.dart';

class grafik_keseluruhan_bna extends StatefulWidget {
  const grafik_keseluruhan_bna({super.key});

  @override
  State<grafik_keseluruhan_bna> createState() => _grafik_keseluruhan_bnaState();
}

class _grafik_keseluruhan_bnaState extends State<grafik_keseluruhan_bna> {
  List<Keseluruhan> fromJson(String strJson) {
    final data = jsonDecode(strJson);
    return List<Keseluruhan>.from(data.map((i) => Keseluruhan.fromMap(i)))
        .toList();
  }

  List<Keseluruhan> hasilCabai = [];
  List<Keseluruhan> hasilBawang = [];
  List<Keseluruhan> hasilPadi = [];
  List<Keseluruhan> stockCabai = [];
  List<Keseluruhan> stockBawang = [];
  List<Keseluruhan> stockPadi = [];

  //cabai
  Future getdataCabai() async {
    List<Keseluruhan> list = [];
    List<Keseluruhan> list1 = [];
    final response = await http.get(Uri.parse(
        "http://192.168.137.48/login_app/grafik_keseluruhan/banda_aceh/cabai.php"));
    list = fromJson(response.body);
    final response2 = await http.get(Uri.parse(
        "http://192.168.137.48/login_app/grafik_keseluruhan/banda_aceh/stock_cabai.php"));
    if (response2.statusCode == 200) {
      list1 = fromJson(response2.body);
    }
    hasilCabai = list;
    stockCabai = list1;
  }

  //bawang
  Future getdataBawang() async {
    List<Keseluruhan> list = [];
    List<Keseluruhan> list1 = [];
    final response = await http.get(Uri.parse(
        "http://192.168.137.48/login_app/grafik_keseluruhan/aceh_besar/bawang.php"));
    list = fromJson(response.body);
    final response2 = await http.get(Uri.parse(
        "http://192.168.137.48/login_app/grafik_keseluruhan/aceh_besar/stock_bawang.php"));
    if (response2.statusCode == 200) {
      list1 = fromJson(response2.body);
    }
    hasilBawang = list;
    stockBawang = list1;
  }

  //padi
  Future getdataPadi() async {
    List<Keseluruhan> list = [];
    List<Keseluruhan> list1 = [];
    final response = await http.get(Uri.parse(
        "http://192.168.137.48/login_app/grafik_keseluruhan/lhok/beras.php"));
    list = fromJson(response.body);
    final response2 = await http.get(Uri.parse(
        "http://192.168.137.48/login_app/grafik_keseluruhan/lhok/stock_beras.php"));
    if (response2.statusCode == 200) {
      list1 = fromJson(response2.body);
    }
    hasilPadi = list;
    stockPadi = list1;
  }

  static List<charts.Series<Keseluruhan, String>> chartData(
      List<Keseluruhan> dataKebutuhan, List<Keseluruhan> dataStock) {
    return [
      charts.Series<Keseluruhan, String>(
          id: 'Keseluruhan',
          domainFn: (Keseluruhan k, _) => k.bulan,
          measureFn: (Keseluruhan k, _) => k.jumlah,
          fillColorFn: (datum, index) {
            return charts.MaterialPalette.green.shadeDefault;
          },
          data: dataKebutuhan),
      charts.Series<Keseluruhan, String>(
          id: 'Keseluruhan',
          domainFn: (Keseluruhan k, _) => k.bulan,
          measureFn: (Keseluruhan k, _) => k.jumlah,
          fillColorFn: (datum, index) {
            return charts.MaterialPalette.blue.shadeDefault;
          },
          data: dataStock)
    ];
  }

  @override
  void initState() {
    getdataCabai();
    getdataBawang();
    getdataPadi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
                right: 15.0, left: 15, top: 25, bottom: 25),
            child: Row(
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
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 15),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Grafik Keseluruhan Komoditas \n Daerah Banda Aceh",
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
              hasilCabai.length != 0
                  ? Column(
                      children: [
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
                            chartData(hasilCabai, stockCabai),
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
                            chartData(hasilBawang, stockBawang),
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
                            chartData(hasilPadi, stockPadi),
                            animate: true,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    )
                  : ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(
                        255,
                        175,
                        243,
                        135,
                      )),
                      onPressed: () {
                        setState(() {
                          getdataCabai();
                          getdataBawang();
                          getdataPadi();
                        });
                        //print(hasilCabai);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Lihat Grafik",
                          style: GoogleFonts.inter(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                      ))
            ],
          ),
        ),
      ]),
    );
  }
}

class Keseluruhan {
  final String bulan;
  final int jumlah;

  Keseluruhan({required this.bulan, required this.jumlah});

  factory Keseluruhan.fromMap(Map<String, dynamic> map) {
    return Keseluruhan(
        bulan: map["bulan"], jumlah: int.parse(map["hasil_panen"]));
  }
}
