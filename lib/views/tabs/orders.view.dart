import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mockup_app_pedidos/store/database-orders.store.dart';
import 'package:mockup_app_pedidos/views/checkout.view.dart';
import 'package:mockup_app_pedidos/widgets/cards/card-orders.dart';

class OrdersView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Container(
          //color: Colors.yellow,
          child: Text(
            "Carrinho",
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
                FontAwesomeIcons.ellipsisV,
                color: Colors.white,
                size: 22,
              ),
            ),
          )
        ],
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: ListView.builder(
                padding: EdgeInsets.all(0),
                primary: false, //using listview and SingleChildScrollView
                shrinkWrap: true, //using listview and SingleChildScrollView
                itemCount: listOrders.length,
                itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.all(0),
                    child: CardOrders(index, listOrders)),
              ),
            ),
          ),
          Container(
            color: Colors.grey[200],
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    top: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "TOTAL",
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "R\$4250",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  margin: EdgeInsets.only(
                    right: 20,
                  ),
                  child: FlatButton(
                    child: Text(
                      "Checkout",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Checkout()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
