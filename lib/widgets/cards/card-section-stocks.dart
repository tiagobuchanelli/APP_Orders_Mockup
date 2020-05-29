import 'package:flutter/material.dart';
import 'package:getflutter/components/button/gf_button.dart';
import 'package:getflutter/shape/gf_button_shape.dart';
import 'package:getflutter/types/gf_button_type.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mockup_app_pedidos/models/item-categ.model.dart';
import 'package:mockup_app_pedidos/views/product-detail.view.dart';

class CardSection extends StatelessWidget {
  final int index;
  final List<ItemCateg> listData;

  CardSection(@required this.index, @required this.listData);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white),
      width: 170,
      child: InkWell(
        onTap: () {
          //_box.put('id_company_profile', widget.bxSecoesH.id);

          /*Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ProductDetails(
                  listData[index].name,
                  listData[index].image,
                  listData[index].unidade,
                  listData[index].poupe,
                  listData[index].preco,
                  listData[index].precoDe,
                  'Descrição generica')));*/
        },
        child: Padding(
          padding: EdgeInsets.only(right: 5, left: 20),
          child: Card(
            margin: EdgeInsets.zero,
            color: Colors.white,
            elevation: 0,
            semanticContainer: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  width: 150,
                  height: 140,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    /*border: Border.all(
                              color: Colors.grey[100],
                              width: 1.0),*/
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    border: Border.all(color: Colors.grey[200]),
                    /*gradient: LinearGradient(
                      colors: [
                        Colors.grey[100],
                        Colors.grey[100],
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),*/
                  ),
                  child: FadeInImage.assetNetwork(
                    alignment: Alignment.topCenter, // add this
                    placeholder: 'https://placehold.it/90',
                    image: listData[index].image,
                    fit: BoxFit.cover,
                    height: 300,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 15),
                ),
                Container(
                  color: Colors.transparent,
                  height: 40,
                  child: Text(
                    listData[index].name,
                    maxLines: 2,
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.black87,
                            //letterSpacing: .0,
                            fontSize: 14,
                            fontWeight: FontWeight.w600)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                ),
                Text(
                  listData[index].unidade,
                  maxLines: 1,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.black87,
                          //letterSpacing: .0,
                          fontSize: 12,
                          fontWeight: FontWeight.normal)),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      listData[index].preco,
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Colors.black87,
                              //letterSpacing: .0,
                              fontSize: 14,
                              fontWeight: FontWeight.w600)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 5),
                    ),
                    Text(
                      listData[index].precoDe,
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.black54,
                          //letterSpacing: .0,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 15),
                ),
                Container(
                  //width: 40,
                  height: 33,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    /*border: Border.all(
                              color: Colors.grey[100],
                              width: 1.0),*/
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    border: Border.all(color: Colors.transparent),
                  ),
                  child: FlatButton(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.add_shopping_cart,
                          color: Colors.white,
                          size: 16,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                        ),
                        Text("Adicionar",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    //letterSpacing: .0,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500))),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetail(
                              listData[index].name,
                              listData[index].preco,
                              listData[index].image),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
