import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mockup_app_pedidos/views/tabs/customers.view.dart';
import 'package:mockup_app_pedidos/views/tabs/home.view.dart';
import 'package:mockup_app_pedidos/views/tabs/menu.view.dart';
import 'package:mockup_app_pedidos/views/tabs/orders.view.dart';
import 'package:mockup_app_pedidos/views/tabs/stock.view.dart';

class TabsPageView extends StatefulWidget {
  @override
  _TabsPageViewState createState() => _TabsPageViewState();
}

class _TabsPageViewState extends State<TabsPageView> {
  int _currentIndex = 0;

  final List<Widget> pages = [
    HomeView(),
    StockView(),
    CustomersView(),
    OrdersView(),
    Menuview()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(_currentIndex, context),
      body: pages[_currentIndex],
    );
  }

  Widget _bottomNavigationBar(int selectedIndex, BuildContext context) =>
      BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme.of(context)
            .primaryColor, //_retournColor(_currentIndex, context),
        unselectedItemColor: Colors.black26,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 2,
        backgroundColor: Colors.white,
        onTap: (int index) => setState(() => _currentIndex = index),
        currentIndex: selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.home,
              size: 20,
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text('Inicio'),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.boxOpen,
              size: 20,
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text('Produtos'),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.users,
              size: 20,
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text('Clientes'),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.shoppingCart,
              size: 20,
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text('Carrinho'),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.bars,
              size: 20,
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text('Menu'),
            ),
          ),
        ],
      );
}
