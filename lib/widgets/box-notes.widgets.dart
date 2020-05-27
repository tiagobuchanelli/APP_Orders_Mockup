import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class BoxNotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 400,
      width: double.infinity,
      margin: EdgeInsets.only(left: 15, right: 15, bottom: 10, top: 5),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(0.9),
        borderRadius: BorderRadius.all(Radius.circular(8)),
        border: Border.all(width: 0, color: Colors.transparent),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300].withOpacity(0.8),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
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
                    "Avisos",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.white,
                            //letterSpacing: .0,
                            fontSize: 18,
                            fontWeight: FontWeight.w600)),
                  ),
                  Text(
                    "Ver Todos",
                    textAlign: TextAlign.end,
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.grey[100],
                            //letterSpacing: .0,
                            fontSize: 12,
                            fontWeight: FontWeight.normal)),
                  ),
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
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                    ),
                    Text(
                      "Vista ao cliente Car Auto SA ",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Colors.white,
                              //letterSpacing: .0,
                              fontSize: 14,
                              fontWeight: FontWeight.normal)),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 0, right: 0, top: 15, bottom: 15),
                  child: Divider(
                    height: 0.8,
                    color: Colors.grey[300],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Icon(
                        FontAwesomeIcons.addressCard,
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                    ),
                    Text(
                      "Atualizar cadastro de JD Logistica ",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Colors.white,
                              //letterSpacing: .0,
                              fontSize: 14,
                              fontWeight: FontWeight.normal)),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 0, right: 0, top: 15, bottom: 15),
                  child: Divider(
                    height: 0.8,
                    color: Colors.grey[300],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Icon(
                        FontAwesomeIcons.phone,
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                    ),
                    Text(
                      "Retornar para 4Rodas Inc ",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Colors.white,
                              //letterSpacing: .0,
                              fontSize: 14,
                              fontWeight: FontWeight.normal)),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 0, right: 0, top: 15, bottom: 15),
                  child: Divider(
                    height: 0.8,
                    color: Colors.grey[300],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Icon(
                        FontAwesomeIcons.bullhorn,
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                    ),
                    Text(
                      "Novas promoções liberadas ",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Colors.white,
                              //letterSpacing: .0,
                              fontSize: 14,
                              fontWeight: FontWeight.normal)),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
