import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderHome extends StatefulWidget {
  @override
  _HeaderHomeState createState() => _HeaderHomeState();
}

class _HeaderHomeState extends State<HeaderHome> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              //padding: EdgeInsets.only(top: 0),
              height: 180,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).primaryColor,
                    Color(0xff3C90E6),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                border: Border.all(width: 0, color: Colors.transparent),
              ),
            ),
            Container(
              height: 140,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                border: Border.all(width: 0, color: Colors.transparent),
              ),
            )
          ],
        ),
        Positioned(
          top: 45,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Container(
                  width: 200,
                  color: Colors.transparent,
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Dashboard",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                            textStyle:
                                TextStyle(color: Colors.white, fontSize: 24)),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.transparent,
                height: 40,
                child: Row(
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.solidBell,
                      color: Colors.white,
                      size: 22,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                    ),
                    Icon(
                      FontAwesomeIcons.solidComment,
                      color: Colors.white,
                      size: 22,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 16),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
          left: 16.0,
          right: 16.0,
          top: 100.0,
          child: Container(
            //color: Colors.pink,
            height: 205.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              //border: Border.all(width: 0, color: Colors.red),
              borderRadius: BorderRadius.all(Radius.circular(8)),
              border: Border.all(width: 0, color: Colors.transparent),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[400].withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Container(
              //color: Colors.deepPurple,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                        top: 15,
                        bottom: 15,
                        right: 15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            height: 20,
                            child: Text(
                              "Resumo",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      color: Colors.black87,
                                      //letterSpacing: .0,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ),
                          Container(
                            height: 20,
                            //width: 20,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isChecked = !isChecked;
                                    });
                                  },
                                  child: Container(
                                    width: 12,
                                    height: 12,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey[100], width: 1),
                                        borderRadius:
                                            BorderRadius.circular(60)),
                                    child: Container(
                                      width: 12,
                                      height: 12,
                                      decoration: BoxDecoration(
                                          color: isChecked
                                              ? Theme.of(context)
                                                  .primaryColor
                                                  .withOpacity(0.9)
                                              : Colors.grey[400]
                                                  .withOpacity(0.7),
                                          borderRadius:
                                              BorderRadius.circular(60)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Balanço Mês",
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          color: Colors.grey[700],
                                          //letterSpacing: .0,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400)),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 20),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isChecked = !isChecked;
                                    });
                                  },
                                  child: Container(
                                    width: 12,
                                    height: 12,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey[100], width: 1),
                                        borderRadius:
                                            BorderRadius.circular(60)),
                                    child: Container(
                                      width: 12,
                                      height: 12,
                                      decoration: BoxDecoration(
                                          color: !isChecked
                                              ? Theme.of(context)
                                                  .primaryColor
                                                  .withOpacity(0.9)
                                              : Colors.grey[400]
                                                  .withOpacity(0.7),
                                          borderRadius:
                                              BorderRadius.circular(60)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Avaliações",
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          color: Colors.grey[700],
                                          //letterSpacing: .0,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400)),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        width: 110,
                        //color: Colors.green,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                Container(
                                  height: 75,
                                  width: 75,
                                  child: CircularProgressIndicator(
                                      //semanticsLabel: "TEste",
                                      //semanticsValue: "Teste 2",
                                      strokeWidth: 10,
                                      backgroundColor: Colors.grey[300],
                                      value: 0.65,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        Theme.of(context)
                                            .primaryColor
                                            .withOpacity(0.9),
                                      )),
                                ),
                                Positioned(
                                  child: Text(
                                    '70%',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Vendas',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      color: Colors.black54,
                                      //letterSpacing: .0,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500)),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  '700',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          color: Colors.black54,
                                          //letterSpacing: .0,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500)),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 2, right: 2),
                                  child: Text(
                                    '|',
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            color: Colors.black54,
                                            //letterSpacing: .0,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                ),
                                Text(
                                  '1000',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          color: Theme.of(context)
                                              .primaryColor
                                              .withOpacity(0.9),
                                          //letterSpacing: .0,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        width: 110,
                        //color: Colors.green,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                Container(
                                  height: 75,
                                  width: 75,
                                  child: CircularProgressIndicator(
                                      //semanticsLabel: "TEste",
                                      //semanticsValue: "Teste 2",
                                      strokeWidth: 10,
                                      backgroundColor: Colors.grey[300],
                                      value: 0.65,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        Theme.of(context)
                                            .primaryColor
                                            .withOpacity(0.9),
                                      )),
                                ),
                                Positioned(
                                  child: Text(
                                    '83%',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Pedidos',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      color: Colors.black54,
                                      //letterSpacing: .0,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500)),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  '830',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          color: Colors.black54,
                                          //letterSpacing: .0,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500)),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 2, right: 2),
                                  child: Text(
                                    '|',
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            color: Colors.black54,
                                            //letterSpacing: .0,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                ),
                                Text(
                                  '1000',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          color: Theme.of(context)
                                              .primaryColor
                                              .withOpacity(0.9),
                                          //letterSpacing: .0,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        width: 110,
                        //color: Colors.green,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                Container(
                                  height: 75,
                                  width: 75,
                                  child: CircularProgressIndicator(
                                      //semanticsLabel: "TEste",
                                      //semanticsValue: "Teste 2",
                                      strokeWidth: 10,
                                      backgroundColor: Colors.grey[300],
                                      value: 0.65,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        Theme.of(context)
                                            .primaryColor
                                            .withOpacity(0.9),
                                      )),
                                ),
                                Positioned(
                                  child: Text(
                                    '65%',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Visitas',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      color: Colors.black54,
                                      //letterSpacing: .0,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500)),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  '650',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          color: Colors.black54,
                                          //letterSpacing: .0,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500)),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 2, right: 2),
                                  child: Text(
                                    '|',
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            color: Colors.black54,
                                            //letterSpacing: .0,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                ),
                                Text(
                                  '1000',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          color: Theme.of(context)
                                              .primaryColor
                                              .withOpacity(0.9),
                                          //letterSpacing: .0,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
