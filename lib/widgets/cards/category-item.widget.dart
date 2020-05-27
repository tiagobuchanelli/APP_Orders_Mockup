import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryItem extends StatelessWidget {
  final String image;
  final String name;

  CategoryItem({@required this.image, @required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 70,
          height: 70,
          margin: EdgeInsets.only(left: 20, top: 5, bottom: 5, right: 5),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            boxShadow: [
              new BoxShadow(
                color: Colors.black12,
                offset: new Offset(1, 1),
                blurRadius: 2,
                spreadRadius: 2,
              )
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(64),
            ),
            border: Border.all(color: Theme.of(context).primaryColor),
          ),
          child: Image.asset(image),
        ),
        Text(
          name,
          maxLines: 2,
          textAlign: TextAlign.left,
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  color: Theme.of(context).primaryColor,
                  //letterSpacing: .0,
                  fontSize: 14,
                  fontWeight: FontWeight.normal)),
        )
      ],
    );
  }
}
