import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mockup_app_pedidos/models/graphic-info.model.dart';
import 'package:mockup_app_pedidos/widgets/cards/card-graphic-info.dart';

class OptionsSection extends StatelessWidget {
  List<GraphicInfo> listData;
  String prefixColor = '0xff';

  //OptionsSection(@required this.listData);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              _buildContainer(
                  prefixColor + "4f78fc",
                  context,
                  "Relatórios", //2196F3
                  "Relatórios Gerenciais",
                  FontAwesomeIcons.chartBar),
              Padding(
                padding: EdgeInsets.only(right: 10),
              ),
              _buildContainer(prefixColor + "FFFFFF", context, "Pedidos",
                  "Relatório de Pedidos", FontAwesomeIcons.edit),
            ],
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 15, top: 15, right: 15, bottom: 15),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              _buildContainer(prefixColor + "FFFFFF", context, "Rotas",
                  "Rotas e Mapeamento", FontAwesomeIcons.map),
              Padding(
                padding: EdgeInsets.only(right: 10),
              ),
              _buildContainer(prefixColor + "FFFFFF", context, "Visitas",
                  "Relatório de Visitas", FontAwesomeIcons.userCheck),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildContainer(String colorBack, BuildContext context, String title,
      String description, IconData typeC) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          color: Color(int.parse(colorBack)).withOpacity(0.9),
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
            Container(
              padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
              alignment: Alignment.centerLeft,
              child: Icon(
                typeC,
                color: colorBack != "0xffFFFFFF"
                    ? Colors.white
                    : Theme.of(context).primaryColor.withOpacity(0.9),
                size: 30,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15, top: 0, bottom: 15, right: 15),
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      title,
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: colorBack != "0xffFFFFFF"
                                  ? Colors.white
                                  : Theme.of(context).accentColor,
                              //letterSpacing: .0,
                              fontSize: 14,
                              fontWeight: FontWeight.w600)),
                      //textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: 0,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      description,
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: colorBack != "0xffFFFFFF"
                                  ? Colors.white
                                  : Theme.of(context).accentColor,
                              //letterSpacing: .0,
                              fontSize: 12,
                              fontWeight: FontWeight.normal)),
                      //textAlign: TextAlign.left,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
