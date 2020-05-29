import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoPaymentMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 400,
      width: double.infinity,
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8)),
        border: Border.all(width: 0, color: Colors.transparent),
        /*boxShadow: [
          BoxShadow(
            color: Colors.grey[300].withOpacity(0.8),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],*/
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 16, top: 15, bottom: 10, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Mensagem",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.black87,
                            //letterSpacing: .0,
                            fontSize: 18,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(4)),
                border: Border.all(color: Colors.grey[200]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
