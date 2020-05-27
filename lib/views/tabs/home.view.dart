import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getflutter/colors/gf_color.dart';
import 'package:getflutter/components/progress_bar/gf_progress_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mockup_app_pedidos/store/info-graphic.store.dart';
import 'package:mockup_app_pedidos/widgets/box-flex-points.widgets.dart';
import 'package:mockup_app_pedidos/widgets/box-notes.widgets.dart';
import 'package:mockup_app_pedidos/widgets/header-home.widgets.dart';
import 'package:mockup_app_pedidos/widgets/latest-orders.widget.dart';
import 'package:mockup_app_pedidos/widgets/section-options.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController _searchController = new TextEditingController();

  _onStartScroll(ScrollMetrics metrics) {
    print("Scroll Start");
  }

  _onUpdateScroll(ScrollMetrics metrics) {
    print("Scroll Update " + metrics.pixels.toString());
    if (metrics.pixels >= 100) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
          statusBarColor: Colors.white, //Color(0xff4f78fc),
          statusBarBrightness: Brightness.light, //
          statusBarIconBrightness: Brightness.dark // status bar color
          ));
    }
    if (metrics.pixels < 70) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.dark, //
          statusBarIconBrightness: Brightness.light // status bar color
          ));
    }
  }

  _onEndScroll(ScrollMetrics metrics) {
    print("Scroll End");
  }

  @override
  void initState() {
    // TODO: implement initState

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, //Color(0xff4f78fc),
        statusBarBrightness: Brightness.dark, //
        statusBarIconBrightness: Brightness.light // status bar color
        ));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: NotificationListener<ScrollNotification>(
        // ignore: missing_return
        onNotification: (scrollNotification) {
          if (scrollNotification is ScrollStartNotification) {
            _onStartScroll(scrollNotification.metrics);
          } else if (scrollNotification is ScrollUpdateNotification) {
            _onUpdateScroll(scrollNotification.metrics);
          } else if (scrollNotification is ScrollEndNotification) {
            _onEndScroll(scrollNotification.metrics);
          }
        },
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              HeaderHome(),
              OptionsSection(),
              BoxFlexPoints(),
              LatestOrders(),
              BoxNotes(),
            ],
          ),
        ),
      ),
    );
  }
}
