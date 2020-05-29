import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mockup_app_pedidos/widgets/checkout-info-address.widget.dart';
import 'package:mockup_app_pedidos/widgets/checkout-info-coupon.widget.dart';
import 'package:mockup_app_pedidos/widgets/checkout-info-payment-message.widget.dart';
import 'package:mockup_app_pedidos/widgets/checkout-info-payment-total.widget.dart';
import 'package:mockup_app_pedidos/widgets/checkout-info-payment.widget.dart';

class Checkout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Container(
          //color: Colors.yellow,
          child: Text(
            "Checkout",
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            InfoPayment(),
            InfoAddress(),
            InfoCoupon(),
            InfoPaymentMessage(),
          ],
        ),
      ),
      bottomNavigationBar: InfoTotalPayment(),
    );
  }
}
