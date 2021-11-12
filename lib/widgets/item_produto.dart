import 'package:flutter/material.dart';

class ItemProduto extends StatelessWidget {
  final String descricao;
  final String preco;
  final String imagem;

  const ItemProduto({
    Key? key,
    required this.descricao,
    required this.preco,
    required this.imagem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey,
        ),
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(
            flex: 8,
            child: Image.asset(
              imagem,
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
            child: Text(
              descricao,
            ),
          ),
          Expanded(
            child: Text(
              "R\$ $preco",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
