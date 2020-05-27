import 'package:flutter/material.dart';

import 'cards/category-item.widget.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CategoryItem(image: "assets/acat.png", name: 'Peças'),
          CategoryItem(image: "assets/bcat.png", name: 'Multimidia'),
          CategoryItem(image: "assets/ccat.png", name: 'Pneus'),
          CategoryItem(image: "assets/dcat.png", name: 'Suspensão'),
          CategoryItem(image: "assets/ecat.png", name: 'Motos'),
          CategoryItem(image: "assets/fcat.png", name: 'Acessórios'),
          CategoryItem(image: "assets/gcat.png", name: 'Alarmes'),
          CategoryItem(image: "assets/hcat.png", name: 'Guincho'),
          CategoryItem(image: "assets/icat.png", name: 'Escapamentos'),
        ],
      ),
    );
  }
}
