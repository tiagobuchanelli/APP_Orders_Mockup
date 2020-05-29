import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardLastOrders extends StatelessWidget {
  int indexPass;
  List listCust;

  CardLastOrders(@required this.indexPass, @required this.listCust);

  @override
  Widget build(BuildContext context) {
    return _cardCategorias(context, indexPass, listCust);
  }

  Widget _cardCategorias(BuildContext context, int index, List lista) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Container(
                //alignment: Alignment.center,
                //padding: EdgeInsets.all(8),
                height: 14.0,
                width: 14.0,
                //child: Center(child: Text("Your child here")),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).primaryColor.withOpacity(0.9),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: ListTile(
              //leading: Icon(Icons.people),
              title: Text(
                lista[index].name,
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: Colors.grey[600],
                        //letterSpacing: .0,
                        fontSize: 14,
                        fontWeight: FontWeight.normal)),
              ),
              trailing: Text(
                lista[index].price,
                textAlign: TextAlign.right,
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: Colors.grey[700],
                        //letterSpacing: .0,
                        fontSize: 14,
                        fontWeight: FontWeight.w500)),
              ),
              //subtitle: Text(lista[index].date),
            ),
          )
        ],
      ),
    );
  }
}
