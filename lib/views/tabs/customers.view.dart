import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomersView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          color: Colors.yellow,
          child: Text(
            "Clientes",
            textAlign: TextAlign.left,
            style: GoogleFonts.poppins(
                textStyle: TextStyle(color: Colors.white, fontSize: 24)),
          ),
        ),
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
