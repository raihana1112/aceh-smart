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
    return List<Kebutuhan>.from(data.map((i) => Kebutuhan.fromMap(i))).toList();
  }

  List<Kebutuhan> hasilCabai = [];
  List<Kebutuhan> hasilCabai1 = [];
  List<Kebutuhan> hasilCabai2 = [];
  List<Kebutuhan> hasilBawang = [];
  List<Kebutuhan> hasilBawang1 = [];
  List<Kebutuhan> hasilBawang2 = [];
  List<Kebutuhan> hasilPadi = [];
  List<Kebutuhan> hasilPadi1 = [];
  List<Kebutuhan> hasilPadi2 = [];

  //cabai
  Future getdataCabai() async {
    List<Kebutuhan> list = [];
    List<Kebutuhan> list1 = [];
    List<Kebutuhan> list2 = [];
    final response = await http.get(Uri.parse(
        "http://192.168.137.48login_app/grafik_kebutuhan/cabai_acehBesar.php"));
    list = fromJson(response.body);
    final response1 = await http.get(Uri.parse(
        "http://192.168.137.48login_app/grafik_kebutuhan/cabai_bandaAceh.php"));
    list1 = fromJson(response1.body);
    final response2 = await http.get(Uri.parse(
        "http://192.168.137.48login_app/grafik_kebutuhan/cabai_lhok.php"));
    list2 = fromJson(response2.body);

    hasilCabai = list;
    hasilCabai1 = list1;
    hasilCabai2 = list2;
  }

  //bawang
  Future getdataBawang() async {
    List<Kebutuhan> list = [];
    List<Kebutuhan> list1 = [];
    List<Kebutuhan> list2 = [];
    final response = await http.get(Uri.parse(
        "http://192.168.137.48login_app/grafik_kebutuhan/bawang_acehBesar.php"));
    if (response.statusCode == 200) {
      list = fromJson(response.body);
    }
    final response1 = await http.get(Uri.parse(
        "http://192.168.137.48login_app/grafik_kebutuhan/bawang_bandaAceh.php"));
    if (response1.statusCode == 200) {
      list1 = fromJson(response1.body);
    }
    final response2 = await http.get(Uri.parse(
        "http://192.168.137.48login_app/grafik_kebutuhan/bawang_lhok.php"));
    if (response2.statusCode == 200) {
      list2 = fromJson(response2.body);
    }

    hasilBawang = list;
    hasilBawang1 = list1;
    hasilBawang2 = list2;
  }

  //padi
  Future getdataPadi() async {
    List<Kebutuhan> list = [];
    List<Kebutuhan> list1 = [];
    List<Kebutuhan> list2 = [];
    final response = await http.get(Uri.parse(
        "http://192.168.137.48login_app/grafik_kebutuhan/beras_acehBesar.php"));

    if (response.statusCode == 200) {
      list = fromJson(response.body);
    }

    final response1 = await http.get(Uri.parse(
        "http://192.168.137.48login_app/grafik_kebutuhan/beras_bandaAceh.php"));
    if (response1.statusCode == 200) {
      list1 = fromJson(response1.body);
    }
    final response2 = await http.get(Uri.parse(
        "http://192.168.137.48login_app/grafik_kebutuhan/beras_lhok.php"));
    if (response2.statusCode == 200) {
      list2 = fromJson(response2.body);
    }

    hasilPadi = list;
    hasilPadi1 = list1;
    hasilPadi2 = list2;
  }

  static List<charts.Series<Kebutuhan, String>> chartData(
      List<Kebutuhan> dataAcehBesar,
      List<Kebutuhan> dataBandaAceh,
      List<Kebutuhan> dataLhok) {
    return [
      charts.Series<Kebutuhan, String>(
          id: 'Kebutuhan',
          domainFn: (Kebutuhan k, _) => k.bulan,
          measureFn: (Kebutuhan k, _) => k.kebutuhan,
          fillColorFn: (datum, index) {
            return charts.MaterialPalette.green.shadeDefault;
          },
          data: dataAcehBesar),
      charts.Series<Kebutuhan, String>(
          id: 'Kebutuhan',
          domainFn: (Kebutuhan k, _) => k.bulan,
          measureFn: (Kebutuhan k, _) => k.kebutuhan,
          fillColorFn: (datum, index) {
            return charts.MaterialPalette.blue.shadeDefault;
          },
          data: dataBandaAceh),
      charts.Series<Kebutuhan, String>(
          id: 'Kebutuhan',
          domainFn: (Kebutuhan k, _) => k.bulan,
          measureFn: (Kebutuhan k, _) => k.kebutuhan,
          fillColorFn: (datum, index) {
            return charts.MaterialPalette.purple.shadeDefault;
          },
          data: dataLhok)
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
                            chartData(hasilCabai, hasilCabai1, hasilCabai2),
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
                            chartData(hasilBawang, hasilBawang1, hasilBawang2),
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
                            chartData(hasilPadi, hasilPadi1, hasilPadi2),
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
                        print(hasilCabai);
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

class Kebutuhan {
  final String bulan;
  final int kebutuhan;

  Kebutuhan({required this.bulan, required this.kebutuhan});

  factory Kebutuhan.fromMap(Map<String, dynamic> map) {
    return Kebutuhan(
        bulan: map["bulan"], kebutuhan: int.parse(map["kebutuhan"]));
  }
}
