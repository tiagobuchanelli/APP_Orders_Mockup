import 'package:mockup_app_pedidos/models/item-categ.model.dart';
import 'package:mockup_app_pedidos/models/item-category.model.dart';

List<ItemCateg> listaCatPromo = <ItemCateg>[
  new ItemCateg(
    'Kit de Embreagem LUK', //nome
    'https://www.casasbahia-imagens.com.br/Control/ArquivoExibir.aspx?IdArquivo=1091495037', //descricao
    'Bravo/Doblo/Palio',
    'Poupe R\$0,30',
    'R\$569,99',
    'R\$750,00',
  ),
  new ItemCateg(
      'Pneu Aro 16 Continental', //nome
      'https://www.casasbahia-imagens.com.br/Control/ArquivoExibir.aspx?IdArquivo=1218651344', //descricao
      '205/55R16',
      'Poupe R\$0,85',
      'R\$292,64',
      'R\$310,12'),
  new ItemCateg(
      'Amortecedor Dianteiro Hyundai', //nome
      'https://www.casasbahia-imagens.com.br/Control/ArquivoExibir.aspx?IdArquivo=1313049772', //descricao
      'ix35/Sportage',
      'Poupe R\$26,09',
      'R\$721,99',
      'R\$849,90'),
];

List<ItemCateg> listaCatSuspensao = <ItemCateg>[
  new ItemCateg(
      'Bucha do Tensor Dianteiro ', //nome
      'https://images.canaldapeca.com.br/produtos/gg/46/41/bucha-do-tensor-dianteiro-1514146-1454100589426.jpg', //descricao
      'FORD F 2000',
      'Poupe R\$0,50',
      'R\$3,48',
      'R\$3,98'),
  new ItemCateg(
      'Retentor do Cubo de Roda ', //nome
      'https://images.canaldapeca.com.br/produtos/gg/26/53/retentor-do-cubo-de-roda-traseiro-1995326-1560356952956.jpg', //descricao
      'MB 1721',
      'Poupe R\$26,81',
      'R\$87,69',
      'R\$114,50'),
  new ItemCateg(
      'Pivô - Nakata', //nome
      'https://images.canaldapeca.com.br/produtos/gg/12/60/pivo-de-suspensao-1556012-1443624899797.jpg', //descricao
      'Gol/Parati',
      'Poupe R\$9,99',
      'R\$59,00',
      'R\$68,99'),
];

List<ItemCateg> listaCatFreios = <ItemCateg>[
  new ItemCateg(
      'Pastilha de Freio - BN 1089', //nome
      'https://images.canaldapeca.com.br/produtos/gg/28/83/pastilha-de-freio-bn-1089-1778328-1452692264184.jpg', //descricao
      'Acura RDX',
      'Poupe R\$33,23',
      'R\$266,76',
      'R\$299,99'),
  new ItemCateg(
      'Disco de Freio - Nakata', //nome
      'https://images.canaldapeca.com.br/produtos/gg/65/45/disco-de-freio-1094565-1512147247694.png', //descricao
      'F 250',
      'Poupe R\$37,40',
      'R\$777,10',
      'R\$814,50'),
  new ItemCateg(
      'Cilindro de roda - ATE', //nome
      'https://images.canaldapeca.com.br/produtos/gg/03/05/cilindro-de-roda-1670503-1552348448792.jpg', //descricao
      'Chevrolet 3100',
      'Poupe R\$10,89',
      'R\$95,99',
      'R\$106,88'),
];

List<ItemCateg> listaCatMotor = <ItemCateg>[
  new ItemCateg(
      'Compressor do Ar Cond', //nome
      'https://images.canaldapeca.com.br/produtos/gg/41/63/compressor-do-ar-condicionado-1846341-1468358974888.jpg', //descricao
      'Blazer',
      'Poupe R\$100,00',
      'R\$899,99',
      'R\$999,99'),
  new ItemCateg(
      'Kit de Reparo da Bomba DÁgua', //nome
      'https://images.canaldapeca.com.br/produtos/gg/95/59/kit-de-reparo-da-bomba-dagua-1555995-1443796313440.jpg', //descricao
      'F 11000',
      'Poupe R\$10,54',
      'R\$215,45',
      'R\$225,99'),
  new ItemCateg(
      'Filtro de Ar - Mann-Filter', //nome
      'https://images.canaldapeca.com.br/produtos/gg/24/86/filtro-de-ar-1088624-1567532512418.jpg', //descricao
      'Gurgel G800',
      'Poupe R\$8,80',
      'R\$39,99',
      'R\$48,79'),
];

/*
List<ItemCategory> listaCategory = <ItemCategory>[
  new ItemCategory(
    'https://i.zst.com.br/images/cafeteira-expresso-arno-dolce-gusto-piccolo-photo6418817-12-38-1b.jpg', //descricao
  ),
  new ItemCategory(
    'https://i.zst.com.br/images/cafeteira-expresso-arno-dolce-gusto-piccolo-photo6418817-12-38-1b.jpg', //descricao
  ),
  new ItemCategory(
    'https://i.zst.com.br/images/cafeteira-expresso-arno-dolce-gusto-piccolo-photo6418817-12-38-1b.jpg', //descricao
  ),
  new ItemCategory(
    'https://i.zst.com.br/images/cafeteira-expresso-arno-dolce-gusto-piccolo-photo6418817-12-38-1b.jpg', //descricao
  ),
  new ItemCategory(
    'https://i.zst.com.br/images/cafeteira-expresso-arno-dolce-gusto-piccolo-photo6418817-12-38-1b.jpg', //descricao
  ),
  new ItemCategory(
    'https://i.zst.com.br/images/cafeteira-expresso-arno-dolce-gusto-piccolo-photo6418817-12-38-1b.jpg', //descricao
  ),
  new ItemCategory(
    'https://i.zst.com.br/images/cafeteira-expresso-arno-dolce-gusto-piccolo-photo6418817-12-38-1b.jpg', //descricao
  ),
  new ItemCategory(
    'https://i.zst.com.br/images/cafeteira-expresso-arno-dolce-gusto-piccolo-photo6418817-12-38-1b.jpg', //descricao
  ),
];
*/
