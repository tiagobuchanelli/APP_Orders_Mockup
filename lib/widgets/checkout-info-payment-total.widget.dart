import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoTotalPayment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      margin: EdgeInsets.only(left: 0, right: 0, bottom: 0, top: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        border: Border.all(width: 0, color: Colors.grey[300]),
        /*boxShadow: [
          BoxShadow(
            color: Colors.grey[300].withOpacity(0.8),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],*/
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                left: 0,
                top: 0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "TOTAL",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.black87,
                            //letterSpacing: .0,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),

                  Text(
                    "R\$4250",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Theme.of(context).primaryColor,
                            //letterSpacing: .0,
                            fontSize: 18,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            ),
            Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              margin: EdgeInsets.only(
                right: 0,
              ),
              child: FlatButton(
                child: Text(
                  "FINALIZAR",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.white,
                          //letterSpacing: .0,
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
                ),
                onPressed: () {
                  /*
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Checkout()));*/
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
