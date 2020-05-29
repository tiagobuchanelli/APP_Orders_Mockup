import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mockup_app_pedidos/store/database-latest-orders.store.dart';
import 'package:mockup_app_pedidos/widgets/cards/card-last-orders.dart';

class LatestOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
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
        children: <Widget>[
          Container(
            //color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 15, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Últimos Pedidos",
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
          //Divider(height: 0.5, color: Colors.grey[300]),
          Container(
              padding: EdgeInsets.only(top: 0, bottom: 10),
              //height: 370.0,
              child: ListView.separated(
                padding: EdgeInsets.all(0),
                primary: false, //using listview and SingleChildScrollView
                shrinkWrap: true, //using listview and SingleChildScrollView
                separatorBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Divider(
                    color: Colors.grey[400],
                    height: 0.8,
                  ),
                ),
                itemCount: imgList.length,
                itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.all(0),
                    child: CardLastOrders(index, imgList)),
              )),
        ],
      ),
    );
  }
}
