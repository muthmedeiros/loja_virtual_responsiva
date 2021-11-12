import 'package:flutter/material.dart';

import 'widgets/item_produto.dart';
import 'widgets/mobile_app_bar.dart';
import 'widgets/web_app_bar.dart';

class LojaVirtual extends StatefulWidget {
  const LojaVirtual({Key? key}) : super(key: key);

  @override
  _LojaVirtualState createState() => _LojaVirtualState();
}

class _LojaVirtualState extends State<LojaVirtual> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var width = constraints.maxWidth;
        var appBarHeight = AppBar().preferredSize.height;

        return Scaffold(
          appBar: width < 600
              ? PreferredSize(
                  preferredSize: Size(width, appBarHeight),
                  child: const MobileAppBar(),
                )
              : PreferredSize(
                  preferredSize: Size(width, appBarHeight),
                  child: const WebAppBar(),
                ),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: GridView.count(
              crossAxisCount: _columnsCount(width),
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: const [
                ItemProduto(
                  descricao: 'Notebook Acer',
                  preco: '2.500,00',
                  imagem: 'assets/images/p1.jpg',
                ),
                ItemProduto(
                  descricao: 'Pneu Goodyear aro 16',
                  preco: '800,00',
                  imagem: 'assets/images/p2.jpg',
                ),
                ItemProduto(
                  descricao: 'Samsung 9',
                  preco: '4.100,00',
                  imagem: 'assets/images/p3.jpg',
                ),
                ItemProduto(
                  descricao: 'Samsung Edge',
                  preco: '2.150,90',
                  imagem: 'assets/images/p4.jpg',
                ),
                ItemProduto(
                  descricao: 'Galaxy 10',
                  preco: '6.200,00',
                  imagem: 'assets/images/p5.jpg',
                ),
                ItemProduto(
                  descricao: 'Iphone 10',
                  preco: '1.900,20',
                  imagem: 'assets/images/p6.jpg',
                ),
                ItemProduto(
                  descricao: 'Notebook Acer',
                  preco: '2.500,00',
                  imagem: 'assets/images/p1.jpg',
                ),
                ItemProduto(
                  descricao: 'Pneu Goodyear aro 16',
                  preco: '800,00',
                  imagem: 'assets/images/p2.jpg',
                ),
                ItemProduto(
                  descricao: 'Samsung 9',
                  preco: '4.100,00',
                  imagem: 'assets/images/p3.jpg',
                ),
                ItemProduto(
                  descricao: 'Samsung Edge',
                  preco: '2.150,90',
                  imagem: 'assets/images/p4.jpg',
                ),
                ItemProduto(
                  descricao: 'Galaxy 10',
                  preco: '6.200,00',
                  imagem: 'assets/images/p5.jpg',
                ),
                ItemProduto(
                  descricao: 'Iphone 10',
                  preco: '1.900,20',
                  imagem: 'assets/images/p6.jpg',
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  //Retorna quantidade de colunas de acordo com largura da tela
  int _columnsCount(double width) {
    if (width <= 600) {
      return 2;
    } else if (width <= 960) {
      return 4;
    }
    return 6;
  }
}
