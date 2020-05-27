import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mockup_app_pedidos/models/item-categ.model.dart';

import 'cards/card-section-stocks.dart';

class SectionPageStocks extends StatelessWidget {
  final String titleSection;
  final List<ItemCateg> listData;

  SectionPageStocks(@required this.titleSection, @required this.listData);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.white,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  titleSection,
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.black87.withOpacity(0.7),
                          //letterSpacing: .0,
                          fontSize: 18,
                          fontWeight: FontWeight.w600)),
                ),
                Text(
                  "Ver Todos",
                  textAlign: TextAlign.end,
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.black87,
                          //letterSpacing: .0,
                          fontSize: 12,
                          fontWeight: FontWeight.normal)),
                ),
              ],
            ),
          ),
        ),
        Container(
            color: Colors.white,
            //margin: EdgeInsets.symmetric(vertical: 20.0),
            padding: EdgeInsets.only(top: 10, bottom: 10),
            height: 330.0,
            child: Padding(
              padding: EdgeInsets.only(left: 0, right: 0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listData.length,
                itemBuilder: (context, index) {
                  return CardSection(index, listData);
                },
              ),
            )),
      ],
    );
  }
}
