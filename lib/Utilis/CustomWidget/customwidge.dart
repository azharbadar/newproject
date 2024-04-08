// Singlepage
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Container timewidget({time}) {
  return Container(
    height: 60,
    width: 100,
    decoration: BoxDecoration(
        color: const Color(0xff4A6594),
        borderRadius: BorderRadius.circular(10)),
    child: Padding(
      padding: const EdgeInsets.all(1.0),
      child: Column(
        children: [
          Text(
            "0",
            style: GoogleFonts.montserrat(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            time,
            style: GoogleFonts.montserrat(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}
