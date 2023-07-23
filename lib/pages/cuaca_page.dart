// ignore_for_file: unused_import, prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, unused_local_variable, prefer_interpolation_to_compose_strings

import 'dart:convert';
import 'package:app_tanaman_ui/components/dayTranslator.dart';
import 'package:app_tanaman_ui/components/susunanHari.dart';
import 'package:app_tanaman_ui/components/text_perkiraan_cuaca.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class cuaca_page extends StatefulWidget {
  cuaca_page({super.key});

  @override
  State<cuaca_page> createState() => _cuaca_pageState();
}

List weatherData = [];
var weatherDataOther;
var dataimage;
var CurrentDay;

Position? currentLocation;
late String lat;
late String long;


Future<Position> getCurrentLocation() async {
  bool serviceEnabled = await Geolocator.isLocationServiceEnabled();

  if (!serviceEnabled){
    return Future.error('Location Service are disabled');
  }
  LocationPermission permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied){
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied){
      return Future.error('Location permissions are denied');
    }
  }

  if (permission == LocationPermission.deniedForever){
    return Future.error('Location permissions are permanently denied, we cannot request');
  }

  return await Geolocator.getCurrentPosition();
}

String cityName = 'Banda Aceh';
getPlaceFromCoordinate() async {
    List<Placemark> placemark = await placemarkFromCoordinates(currentLocation!.latitude, currentLocation!.longitude);
    Placemark place = placemark[0];
    cityName = place.locality!;
    print(cityName);
}

Future getWeatherData() async {
  final Uri urlDay = Uri.parse(
      "https://timeapi.io/api/Time/current/zone?timeZone=Asia/Jakarta");
  final Uri url = Uri.parse(
      "https://api.openweathermap.org/data/2.5/forecast?q=${cityName}&APPID=4457778757c6a24d799d96a66fcc7af4");
  http.Response response = await http.get(url);
  http.Response responseDay = await http.get(urlDay);

  var jsonData = jsonDecode(response.body);
  var jsonDataDay = jsonDecode(responseDay.body);
  CurrentDay = jsonDataDay;
  weatherData = jsonData['list'];
  weatherDataOther = jsonData;
  dataimage = weatherData[0]['weather'][0]['icon'];
  
  return jsonData;
}

int convertKeltoCel(double x) {
  double hasil = x - 273.15;
  return hasil.round();
}

class _cuaca_pageState extends State<cuaca_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      future: getWeatherData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return SafeArea(
            
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 5, bottom: 25.0, left: 15, right: 15),
                child: Column(
                  children: [
                    //back button
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
                    //container 2
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 1,
                                  color: Color.fromARGB(38, 0, 0, 0),
                                  offset: Offset(0, 2),
                                  spreadRadius: 1)
                            ],
                            border: Border.all(
                              width: 3,
                              color: Color.fromARGB(255, 175, 243, 135),
                            ),
                            color: Color.fromARGB(255, 223, 255, 224)),
                        child: SizedBox(
                          height: 240,
                          width: MediaQuery.of(context).size.width,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 20.0, bottom: 20, left: 15, right: 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      dayTranslator(CurrentDay['dayOfWeek']) +
                                          ', ' +
                                          CurrentDay['day'].toString() +
                                          '-' +
                                          CurrentDay['month'].toString() +
                                          '-' +
                                          CurrentDay['year'].toString(),
                                      style: GoogleFonts.inter(
                                          fontSize: 15,
                                          color: Color.fromARGB(155, 0, 0, 0),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          convertKeltoCel(weatherData[0]['main']
                                                      ['temp'])
                                                  .toString() +
                                              "\u00B0",
                                          style: GoogleFonts.inter(
                                              fontSize: 50,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          weatherData[0]['weather'][0]['main'],
                                          style: GoogleFonts.inter(
                                              fontSize: 25,
                                              color: Color.fromARGB(
                                                  155, 126, 126, 126),
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 15.0),
                                      child: Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    'http://openweathermap.org/img/w/$dataimage.png'),
                                                fit: BoxFit.cover)),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      weatherDataOther['city']['name'],
                                      style: GoogleFonts.inter(
                                          fontSize: 25,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    //wind
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Icon(
                                              Icons.cloud,
                                              color: Color.fromARGB(
                                                  255, 108, 198, 57),
                                            ),
                                            Text(weatherData[0]['wind']['speed']
                                                    .round()
                                                    .toString() +
                                                " km/h")
                                          ],
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        //humidity
                                        Column(
                                          children: [
                                            Icon(
                                              Icons.water_drop,
                                              color: Color.fromARGB(
                                                  255, 108, 198, 57),
                                            ),
                                            Text(weatherData[0]['main']
                                                        ['humidity']
                                                    .toString() +
                                                "%")
                                          ],
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )),

                    SizedBox(
                      height: 15,
                    ),

                    SizedBox(
                      height: 40,
                    ),

                    Row(
                      children: [
                        Flexible(
                          child: RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'CUACA ',
                                  style: GoogleFonts.inter(
                                      fontSize: 27,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                ),
                                TextSpan(
                                  text:
                                      'akan mempengaruhi tanaman kamu Lihat perkiraan cuaca kedepan.',
                                  style: GoogleFonts.inter(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 204, 204, 204),
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    //container 1
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 1,
                                  color: Color.fromARGB(38, 0, 0, 0),
                                  offset: Offset(0, 2),
                                  spreadRadius: 1)
                            ],
                            border: Border.all(
                              width: 3,
                              color: Color.fromARGB(255, 175, 243, 135),
                            ),
                            color: Color.fromARGB(255, 223, 255, 224)),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Row(
                                //   mainAxisAlignment:
                                //       MainAxisAlignment.spaceBetween,
                                //   children: [
                                //     Text(
                                //       "Kemarin",
                                //       style: GoogleFonts.inter(
                                //           fontSize: 16,
                                //           color: Color.fromARGB(
                                //               255, 190, 190, 190),
                                //           fontWeight: FontWeight.w500),
                                //     ),
                                //     Text(
                                //       "25\u00B0 27\u00B0",
                                //       style: GoogleFonts.inter(
                                //           fontSize: 16,
                                //           color: Color.fromARGB(
                                //               255, 190, 190, 190),
                                //           fontWeight: FontWeight.w500),
                                //     ),
                                //   ],
                                // ),
                                // SizedBox(
                                //   height: 20,
                                // ),
                                text_perkiraan_cuaca(
                                    hari:
                                        susunanHari(CurrentDay['dayOfWeek'], 1),
                                    kelembapan: weatherData[1]['main']
                                        ['humidity'],
                                    suhu1: convertKeltoCel(
                                        weatherData[1]['main']['temp']),
                                    suhu2: 0,
                                    Source: 'http://openweathermap.org/img/w/' +
                                        weatherData[1]['weather'][0]['icon'] +
                                        '.png'),
                                SizedBox(
                                  height: 20,
                                ),
                                text_perkiraan_cuaca(
                                    hari:
                                        susunanHari(CurrentDay['dayOfWeek'], 2),
                                    kelembapan: weatherData[2]['main']
                                        ['humidity'],
                                    suhu1: convertKeltoCel(
                                        weatherData[2]['main']['temp']),
                                    suhu2: 0,
                                    Source: 'http://openweathermap.org/img/w/' +
                                        weatherData[2]['weather'][0]['icon'] +
                                        '.png'),
                                SizedBox(
                                  height: 20,
                                ),
                                text_perkiraan_cuaca(
                                    hari:
                                        susunanHari(CurrentDay['dayOfWeek'], 3),
                                    kelembapan: weatherData[3]['main']
                                        ['humidity'],
                                    suhu1: convertKeltoCel(
                                        weatherData[3]['main']['temp']),
                                    suhu2: 0,
                                    Source: 'http://openweathermap.org/img/w/' +
                                        weatherData[3]['weather'][0]['icon'] +
                                        '.png'),
                                SizedBox(
                                  height: 20,
                                ),
                                text_perkiraan_cuaca(
                                    hari:
                                        susunanHari(CurrentDay['dayOfWeek'], 4),
                                    kelembapan: weatherData[4]['main']
                                        ['humidity'],
                                    suhu1: convertKeltoCel(
                                        weatherData[4]['main']['temp']),
                                    suhu2: 0,
                                    Source: 'http://openweathermap.org/img/w/' +
                                        weatherData[4]['weather'][0]['icon'] +
                                        '.png'),
                                SizedBox(
                                  height: 20,
                                ),
                                text_perkiraan_cuaca(
                                    hari:
                                        susunanHari(CurrentDay['dayOfWeek'], 5),
                                    kelembapan: weatherData[5]['main']
                                        ['humidity'],
                                    suhu1: convertKeltoCel(
                                        weatherData[5]['main']['temp']),
                                    suhu2: 0,
                                    Source: 'http://openweathermap.org/img/w/' +
                                        weatherData[5]['weather'][0]['icon'] +
                                        '.png'),
                                SizedBox(
                                  height: 20,
                                ),
                                text_perkiraan_cuaca(
                                    hari:
                                        susunanHari(CurrentDay['dayOfWeek'], 6),
                                    kelembapan: weatherData[6]['main']
                                        ['humidity'],
                                    suhu1: convertKeltoCel(
                                        weatherData[6]['main']['temp']),
                                    suhu2: 0,
                                    Source: 'http://openweathermap.org/img/w/' +
                                        weatherData[6]['weather'][0]['icon'] +
                                        '.png'),
                                SizedBox(
                                  height: 20,
                                ),
                                text_perkiraan_cuaca(
                                    hari:
                                        susunanHari(CurrentDay['dayOfWeek'], 7),
                                    kelembapan: weatherData[7]['main']
                                        ['humidity'],
                                    suhu1: convertKeltoCel(
                                        weatherData[7]['main']['temp']),
                                    suhu2: 0,
                                    Source: 'http://openweathermap.org/img/w/' +
                                        weatherData[7]['weather'][0]['icon'] +
                                        '.png'),
                              ],
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 25,
                    ),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(
                                                  255, 108, 198, 57)
                      ),
                      onPressed: () async{
                      getCurrentLocation().then((value) {
                        lat = '${value.latitude}';
                        long = '${value.longitude}';

                        setState(() {
                          currentLocation = value;
                        });
                      });

                      getPlaceFromCoordinate();
                    }, child: Text("Update Lokasi Anda"))
                  ],
                ),
              ),
            ),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    ));
  }
}
