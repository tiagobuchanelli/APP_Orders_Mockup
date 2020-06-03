import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:getflutter/components/carousel/gf_carousel.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mockup_app_pedidos/store/database-stocks.store.dart';
import 'package:mockup_app_pedidos/widgets/category-list.widget.dart';
import 'package:mockup_app_pedidos/widgets/section-page-stocks.widget.dart';

class StockView extends StatefulWidget {
  @override
  _StockViewState createState() => _StockViewState();
}

class _StockViewState extends State<StockView> {
  TextEditingController _searchController = new TextEditingController();

  final List<String> imgList = [
    'https://static.paodeacucar.com/img/uploads/1/600/654600.jpg',
    'https://s3.amazonaws.com/relacionamento.paodeacucar.com.br/PaoDeAcucar/2020/05/11/2020_05_07_vinhostritavinhos_sli.jpg',
    'https://static.paodeacucar.com/img/uploads/1/488/654488.jpg',
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Color(0xff4f78fc),
        statusBarBrightness: Brightness.dark, //
        statusBarIconBrightness: Brightness.light // status bar color
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        /*appBar: AppBar(
        title: Text(
          "Dashboard",
          textAlign: TextAlign.left,
          style: GoogleFonts.poppins(
              textStyle: TextStyle(color: Colors.white, fontSize: 24)),
        ),
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
      ),*/
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  border: Border.all(
                      width: 0, color: Theme.of(context).primaryColor),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
                  child: Container(
                    height: 45,
                    child: TextField(
                      enableInteractiveSelection: false,
                      focusNode: new FocusNode(),
                      showCursor: false,
                      controller: _searchController,
                      autofocus: false,
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey[500],
                        ),
                        filled: true,
                        fillColor: Colors.grey[200], //Color(0xffF2F3F4), //
                        contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Colors.grey[200], width: 2.0)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(color: Colors.grey[200], width: 2.0),
                        ),
                        hintText: 'Pesquise por marca, nome',
                        hintStyle: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Colors.grey[500], fontSize: 16)),
                      ),
                      onTap: () {
                        FocusScope.of(context).requestFocus(new FocusNode());
                      },
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                height: 120,
                child: CategoryList(),
              ),
              SizedBox(
                height: 15,
                child: Container(
                  color: Colors.grey[100],
                ),
              ),
              SectionPageStocks('Promoções', listaCatPromo),
              Container(
                height: 10,
                color: Colors.grey[100],
              ),
              SectionPageStocks('Suspensão', listaCatSuspensao),
              Container(
                height: 10,
                color: Colors.grey[100],
              ),
              SectionPageStocks('Freios', listaCatFreios),
              Container(
                height: 10,
                color: Colors.grey[100],
              ),
              SectionPageStocks('Motor', listaCatMotor),
              Container(
                height: 10,
                color: Colors.grey[100],
              ),
            ],
          ),
        ));
  }
}
