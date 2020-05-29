import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mockup_app_pedidos/widgets/list-customers.widget.dart';

class CustomersView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Container(
            //color: Colors.yellow,
            child: Text(
              "Clientes",
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(color: Colors.white, fontSize: 24)),
            ),
          ),
          actions: <Widget>[
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(
                  FontAwesomeIcons.search,
                  color: Colors.white,
                  size: 22,
                ),
              ),
            )
          ],
          elevation: 0,
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
                color: Colors.grey[200],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Recentes",
                      style: GoogleFonts.poppins(
                          textStyle:
                              TextStyle(color: Colors.black54, fontSize: 18)),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          "Filtrar",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Colors.black54, fontSize: 18)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ListCustomers(),
            ],
          ),
        ));
  }
}
