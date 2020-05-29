import 'package:flutter/material.dart';
import 'package:mockup_app_pedidos/store/database-customers.store.dart';
import 'package:mockup_app_pedidos/widgets/cards/card-list-costumers.dart';

class ListCustomers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        //padding: EdgeInsets.only(top: 0, bottom: 10),
        //height: 370.0,
        child: ListView.builder(
      padding: EdgeInsets.all(0),
      primary: false, //using listview and SingleChildScrollView
      shrinkWrap: true, //using listview and SingleChildScrollView
      /*separatorBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Divider(
                color: Colors.grey[400],
                height: 0.8,
              ),
            ),*/
      itemCount: listCustomers.length,
      itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.all(0),
          child: CardCustomers(index, listCustomers)),
    ));
  }
}
