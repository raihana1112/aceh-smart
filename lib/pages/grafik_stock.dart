// ignore_for_file: unused_import, prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:app_tanaman_ui/pages/Auth%20View/login_page.dart';
import 'package:app_tanaman_ui/pages/Petani/home_page_petani.dart';
import 'package:charts_flutter_new/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

import '../components/navigation_button.dart';

class grafik_stock extends StatefulWidget {
  const grafik_stock({super.key});

  @override
  State<grafik_stock> createState() => _grafik_stockState();
}

class _grafik_stockState extends State<grafik_stock> {
  List<Stock> fromJson(String strJson) {
    final data = jsonDecode(strJson);
    return List<Stock>.from(data.map((i) => Stock.fromMap(i))).toList();
  }

  List<Stock> hasilCabai = [];
  List<Stock> hasilCabai1 = [];
  List<Stock> hasilCabai2 = [];
  List<Stock> hasilBawang = [];
  List<Stock> hasilBawang1 = [];
  List<Stock> hasilBawang2 = [];
  List<Stock> hasilPadi = [];
  List<Stock> hasilPadi1 = [];
  List<Stock> hasilPadi2 = [];

  //cabai
  Future getdataCabai() async {
    List<Stock> list = [];
    List<Stock> list1 = [];
    List<Stock> list2 = [];
    final response = await http.get(Uri.parse(
        "http://192.168.137.48/login_app/grafik_stock/cabai_acehBesar.php"));
    list = fromJson(response.body);
    final response1 = await http.get(Uri.parse(
        "http://192.168.137.48/login_app/grafik_stock/cabai_bandaAceh.php"));
    list1 = fromJson(response1.body);
    final response2 = await http.get(Uri.parse(
        "http://192.168.137.48/login_app/grafik_stock/cabai_lhok.php"));
    list2 = fromJson(response2.body);

    hasilCabai = list;
    hasilCabai1 = list1;
    hasilCabai2 = list2;
  }

  //bawang
  Future getdataBawang() async {
    List<Stock> list = [];
    List<Stock> list1 = [];
    List<Stock> list2 = [];
    final response = await http.get(Uri.parse(
        "http://192.168.137.48/login_app/grafik_stock/bawang_acehBesar.php"));
    list = fromJson(response.body);
    final response1 = await http.get(Uri.parse(
        "http://192.168.137.48/login_app/grafik_stock/bawang_bandaAceh.php"));
    list1 = fromJson(response1.body);
    final response2 = await http.get(Uri.parse(
        "http://192.168.137.48/login_app/grafik_stock/bawang_lhok.php"));
    list2 = fromJson(response2.body);

    hasilBawang = list;
    hasilBawang1 = list1;
    hasilBawang2 = list2;
  }

  //padi
  Future getdataPadi() async {
    List<Stock> list = [];
    List<Stock> list1 = [];
    List<Stock> list2 = [];
    final response = await http.get(Uri.parse(
        "http://192.168.137.48/login_app/grafik_stock/beras_acehBesar.php"));
    list = fromJson(response.body);

    final response1 = await http.get(Uri.parse(
        "http://192.168.137.48/login_app/grafik_stock/beras_bandaAceh.php"));
    list1 = fromJson(response1.body);
    final response2 = await http.get(Uri.parse(
        "http://192.168.137.48/login_app/grafik_stock/beras_lhok.php"));
    list2 = fromJson(response2.body);

    hasilPadi = list;
    hasilPadi1 = list1;
    hasilPadi2 = list2;
  }

  static List<charts.Series<Stock, String>> chartData(List<Stock> dataAcehBesar,
      List<Stock> dataBandaAceh, List<Stock> dataLhok) {
    return [
      charts.Series<Stock, String>(
          id: 'Stock',
          domainFn: (Stock k, _) => k.bulan_tanam,
          measureFn: (Stock k, _) => k.hasil_panen,
          fillColorFn: (datum, index) {
            return charts.MaterialPalette.green.shadeDefault;
          },
          data: dataAcehBesar),
      charts.Series<Stock, String>(
          id: 'Stock',
          domainFn: (Stock k, _) => k.bulan_tanam,
          measureFn: (Stock k, _) => k.hasil_panen,
          fillColorFn: (datum, index) {
            return charts.MaterialPalette.blue.shadeDefault;
          },
          data: dataBandaAceh),
      charts.Series<Stock, String>(
          id: 'Stock',
          domainFn: (Stock k, _) => k.bulan_tanam,
          measureFn: (Stock k, _) => k.hasil_panen,
          fillColorFn: (datum, index) {
            return charts.MaterialPalette.purple.shadeDefault;
          },
          data: dataLhok)
    ];
  }

  @override
  void initState() {
    getdataBawang();
    getdataCabai();
    getdataPadi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    getdataBawang();
    getdataCabai();
    getdataPadi();
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
                    "Grafik Stock Komoditas",
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

class Stock {
  final String bulan_tanam;
  final int hasil_panen;

  Stock({required this.bulan_tanam, required this.hasil_panen});

  factory Stock.fromMap(Map<String, dynamic> map) {
    return Stock(
        bulan_tanam: map["bulan"], hasil_panen: int.parse(map["hasil_panen"]));
  }
}
