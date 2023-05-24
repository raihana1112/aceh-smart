// ignore_for_file: unused_import, prefer_const_constructors, camel_case_types, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class status_field extends StatelessWidget {
  final String title;
  final String titleChild;
  final  icon;
  const status_field({super.key, required this.title, required this.titleChild, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          icon,
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.inter(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                titleChild,
                style: GoogleFonts.inter(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ],
          )
        ],
      ),
    );
  }
}
