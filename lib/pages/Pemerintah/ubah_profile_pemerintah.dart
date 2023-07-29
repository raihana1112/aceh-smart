// ignore_for_file: unused_import, prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables
import 'dart:convert';

import 'package:app_tanaman_ui/components/navigation_button.dart';
import 'package:app_tanaman_ui/pages/Auth%20View/login_page.dart';
import 'package:app_tanaman_ui/pages/Pemerintah/home_page_pemerintah.dart';
import 'package:app_tanaman_ui/pages/Pemerintah/profile.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

import '../../components/text_fields.dart';

class ubah_profile_pemerintah extends StatefulWidget {
  final String username, nama_lengkap, telp, instansi, nip;
  final int id_user;
  const ubah_profile_pemerintah(
      {super.key,
      required this.username,
      required this.telp,
      required this.id_user,
      required this.instansi,
      required this.nama_lengkap,
      required this.nip});

  @override
  State<ubah_profile_pemerintah> createState() =>
      _ubah_profile_pemerintahState();
}

class _ubah_profile_pemerintahState extends State<ubah_profile_pemerintah> {
  bool isView = true;
  bool isView2 = true;

  // String nama = '';
  // String inst = '';
  // String nipp = '';
  // String telpp = '';
  // String username = '';

  TextEditingController nama = TextEditingController();
  TextEditingController instansii = TextEditingController();
  TextEditingController nipp = TextEditingController();
  TextEditingController telpp = TextEditingController();
  TextEditingController userr = TextEditingController();
  TextEditingController passs = TextEditingController();

  // Future<List> tampil_data() async {
  //   try {
  //     final response = await http.get(
  //         Uri.parse("http://192.168.137.48/login_app/tampil_profile.php"));
  //     var datauser = json.decode(response.body);
  //     setState(() {
  //       id_user = int.parse(datauser[0]['id']);
  //       // id_user = datauser[0]['id'];
  //       nama = datauser[0]['nama_lengkap'];
  //       inst = datauser[0]['instansi'];
  //       nipp = datauser[0]['nip'];
  //       telpp = datauser[0]['telp'];
  //       username = datauser[0]['username'];
  //     });
  //   } catch (e) {
  //     print(e);
  //   }
  //   return [];
  // }

  Future ubah() async {
    try {
      final response = await http.put(
          Uri.parse("http://10.140.133.227/login_app/ubah_pofile.php"),
          body: {
            "nama_lengkap": nama.text,
            "instansi": instansii.text,
            "nip": nipp.text,
            "telp": telpp.text,
            "username": userr.text,
            "password": passs.text,
          });
      //var datauser = await json.decode(jsonEncode(response.body));
      if (response.body.isNotEmpty) {
        json.decode(response.body);
        setState(() {
          tampil();
        });
      } else {
        tampil2();
        // ignore: use_build_context_synchronously
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => profile_page_pemerintah(
                id_user: id_user,
                username: username,
                instansi: instansi,
                nip: nip,
                telp: telp,
                nama_lengkap: nama_lengkap),
          ),
        );
      }
    } catch (e) {
      print(e);
    }
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
                right: 15.0, left: 15, top: 30, bottom: 25),
            child: Column(
              children: [
                //image
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                              title: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25.0),
                                child: Text(
                                  "Pilih Foto!",
                                  style: GoogleFonts.inter(
                                      fontSize: 15,
                                      color: Colors.black26,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              content: SizedBox(
                                height: 150,
                                width: 50,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: 2,
                                        ),
                                        Image.asset("images/camera.png"),
                                        Image.asset("images/galeri.png"),
                                        SizedBox(
                                          width: 2,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 25.0),
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                        spreadRadius: 1,
                                                        blurRadius: 1,
                                                        offset: Offset(0, 2),
                                                        color: Colors.black26)
                                                  ],
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  border: Border.all(
                                                    color: Color.fromARGB(
                                                        255, 175, 243, 135),
                                                    width: 3,
                                                  )),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 8.0,
                                                        horizontal: 25),
                                                child: Text(
                                                  "Batal",
                                                  style: GoogleFonts.inter(
                                                      fontSize: 15,
                                                      color: Colors.black26,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "images/profile.png",
                            ),
                            fit: BoxFit.cover),
                      ),
                      child: SizedBox(
                        height: 75,
                        width: 75,
                      ),
                    ),
                  ),
                ),

                //nama
                Text(
                  username,
                  style: GoogleFonts.inter(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
                //pekerjaan
                Text(
                  "Petani",
                  style: GoogleFonts.inter(
                      fontSize: 15,
                      color: Colors.black45,
                      fontWeight: FontWeight.w700),
                ),

                SizedBox(
                  height: 40,
                ),

                //content

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //textfield
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 237, 237, 237),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          children: [
                            Image.asset(
                              "images/username.png",
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: TextField(
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: nama_lengkap,
                                  hintStyle: GoogleFonts.inter(
                                      fontSize: 14,
                                      color: Colors.black38,
                                      fontWeight: FontWeight.w400),
                                ),
                                controller: nama,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 237, 237, 237),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          children: [
                            Image.asset("images/alamat.png",
                                color: Colors.black),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: TextField(
                                //SizedBox(height: 15),
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: instansi,
                                  hintStyle: GoogleFonts.inter(
                                      fontSize: 14,
                                      color: Colors.black38,
                                      fontWeight: FontWeight.w400),
                                ),
                                controller: instansii,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //textfield
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 237, 237, 237),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          children: [
                            Image.asset("images/nip.png", color: Colors.black),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: TextField(
                                //SizedBox(height: 15),
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: nip,
                                  hintStyle: GoogleFonts.inter(
                                      fontSize: 14,
                                      color: Colors.black38,
                                      fontWeight: FontWeight.w400),
                                ),
                                controller: nipp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 237, 237, 237),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          children: [
                            Image.asset("images/telepon.png",
                                color: Colors.black),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: TextField(
                                //SizedBox(height: 15),
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: telp,
                                  hintStyle: GoogleFonts.inter(
                                      fontSize: 14,
                                      color: Colors.black38,
                                      fontWeight: FontWeight.w400),
                                ),
                                controller: telpp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 237, 237, 237),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          children: [
                            Image.asset("images/username.png",
                                color: Colors.black),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: TextField(
                                //SizedBox(height: 15),
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: username,
                                  hintStyle: GoogleFonts.inter(
                                      fontSize: 14,
                                      color: Colors.black38,
                                      fontWeight: FontWeight.w400),
                                ),
                                controller: userr,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 237, 237, 237),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          children: [
                            Image.asset(
                              "images/open lock.png",
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: TextField(
                                controller: passs,
                                style: GoogleFonts.inter(
                                  fontSize: 15,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  hintStyle: GoogleFonts.inter(
                                      fontSize: 15,
                                      color: Colors.black38,
                                      fontWeight: FontWeight.w400),
                                ),
                                obscureText: isView,
                              ),
                            ),
                            isView
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isView = true;
                                      });
                                    },
                                    child: Image.asset(
                                      "images/hide.png",
                                      color: Colors.black,
                                      width: 25,
                                    ))
                                : GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isView = false;
                                      });
                                    },
                                    child: Image.asset(
                                      "images/view.png",
                                      color: Colors.black,
                                      width: 25,
                                    ))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),

                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 237, 237, 237),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          children: [
                            Image.asset(
                              "images/lock.png",
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: TextField(
                                style: GoogleFonts.inter(
                                  fontSize: 15,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Konfirmasi Password",
                                  hintStyle: GoogleFonts.inter(
                                      fontSize: 15,
                                      color: Colors.black38,
                                      fontWeight: FontWeight.w400),
                                ),
                                obscureText: isView2,
                              ),
                            ),
                            isView2
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isView2 = false;
                                      });
                                    },
                                    child: Image.asset(
                                      "images/hide.png",
                                      color: Colors.black,
                                      width: 25,
                                    ))
                                : GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isView2 = true;
                                      });
                                    },
                                    child: Image.asset(
                                      "images/view.png",
                                      color: Colors.black,
                                      width: 25,
                                    ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                //bagian bawah
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 175, 243, 135),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      onPressed: () {
                        print(nama_lengkap);
                        // print('data : ${datauser}');
                        // ubah();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Ubah Profile Anda",
                          style: GoogleFonts.inter(
                              fontSize: 18,
                              color: Colors.black87,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void tampil() {
    Fluttertoast.showToast(
        msg: "UBAH PROFILE GAGAL",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  void tampil2() {
    Fluttertoast.showToast(
        msg: "Anda berhasil mengubah profile",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
