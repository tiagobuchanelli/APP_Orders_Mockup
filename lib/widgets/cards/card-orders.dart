import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CardOrders extends StatelessWidget {
  int indexPass;
  List listOrd;

  CardOrders(@required this.indexPass, @required this.listOrd);

  @override
  Widget build(BuildContext context) {
    return _cardCategorias(context, indexPass, listOrd);
  }

  Widget _cardCategorias(BuildContext context, int index, List lista) {
    return Container(
      margin: EdgeInsets.only(top: 5, bottom: 5, left: 16, right: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8)),
        border: Border.all(width: 0, color: Colors.transparent),
        /*boxShadow: [
          BoxShadow(
            color: Colors.grey[300].withOpacity(0.6),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],*/
      ),
      padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              width: 100,
              height: 100,
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                border: Border.all(color: Colors.grey[200], width: 1.0),
              ),
              child: FadeInImage.assetNetwork(
                alignment: Alignment.topCenter, // add this
                placeholder: 'https://placehold.it/90',
                image: lista[index].image,
                fit: BoxFit.cover,
                height: 300,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              padding: EdgeInsets.only(left: 15),
              //color: Colors.yellow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      lista[index].name,
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 16,
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      lista[index].name,
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                          textStyle:
                              TextStyle(color: Colors.black54, fontSize: 14)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    //color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          lista[index].price,
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 16)),
                        ),
                        Container(
                          height: 28,
                          width: 114,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width: 38,
                                alignment: Alignment.center,
                                child: FlatButton(
                                  child: Text(
                                    "-",
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 16)),
                                  ),
                                  onPressed: () => {},
                                ),
                              ),
                              Container(
                                width: 38,
                                alignment: Alignment.center,
                                child: Text(
                                  "1",
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          color: Colors.black54, fontSize: 16)),
                                ),
                              ),
                              Container(
                                width: 38,
                                alignment: Alignment.center,
                                child: FlatButton(
                                  child: Text(
                                    "+",
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 16)),
                                  ),
                                  onPressed: () => {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
