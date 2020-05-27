import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mockup_app_pedidos/views/tabs-page.view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final ThemeData temaPadrao = ThemeData(
      //primaryColor:
      primaryColor: Color(0xff4f78fc), //Color(0xff00A6FF),
      accentColor: Colors.blueAccent //Color(0xff25D366),
      );

  // This widget is throot of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: temaPadrao,
      home: TabsPageView(),
    );
  }
}
