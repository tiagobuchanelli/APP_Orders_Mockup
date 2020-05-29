import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoPayment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 400,
      width: double.infinity,
      margin: EdgeInsets.only(left: 16, right: 16, bottom: 10, top: 0),
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
                  left: 20, top: 15, bottom: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Forma de Pagamento",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.black87,
                            //letterSpacing: .0,
                            fontSize: 18,
                            fontWeight: FontWeight.w600)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.creditCard,
                        color: Colors.black87,
                        size: 16,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                      ),
                      Icon(
                        FontAwesomeIcons.ccVisa,
                        color: Colors.black87,
                        size: 16,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Icon(
                        FontAwesomeIcons.building,
                        color: Colors.black87,
                        size: 16,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                    ),
                    Text(
                      "Escolher forma de pagamento ",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Colors.black87,
                              //letterSpacing: .0,
                              fontSize: 14,
                              fontWeight: FontWeight.normal)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
