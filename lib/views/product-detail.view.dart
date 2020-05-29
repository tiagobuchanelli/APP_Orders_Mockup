import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getflutter/components/image/gf_image_overlay.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetail extends StatefulWidget {
  String name;
  String price;
  String imgBck;

  ProductDetail(
      @required this.name, @required this.price, @required this.imgBck);

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  var top = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                // print('constraints=' + constraints.toString());
                //top = constraints.biggest.height;
                return FlexibleSpaceBar(
                  centerTitle: true,
                  title: AnimatedOpacity(
                      duration: Duration(milliseconds: 300),
                      //opacity: top == 80.0 ? 1.0 : 0.0,
                      opacity: 1.0,
                      child: Text(
                        widget.name,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                            textStyle:
                                TextStyle(color: Colors.white, fontSize: 24)),
                      )),
                  background: GFImageOverlay(
                      height: 200,
                      width: 300,
                      child: Center(),
                      colorFilter: new ColorFilter.mode(
                          Colors.black.withOpacity(0.20), BlendMode.darken),
                      image: NetworkImage(widget.imgBck)),
                );
              }),
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Icon(
                    FontAwesomeIcons.heart,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Icon(
                    FontAwesomeIcons.shareAlt,
                    size: 20,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ];
        },
        body: Center(
          child: Text("Dados do cliente"),
        ),
      ),
    );
  }
}
