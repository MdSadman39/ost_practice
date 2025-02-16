import 'package:flutter/material.dart';

import '../../Models/product.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.product});
  final Product product;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      //leading: Image.network(product.image?? ''),
      title: Text(product.productName ?? ''),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Product code:${product.productCode??''}'),
          Text('Quantity:${product.quantity?? '' }'),
          Text('Price:${product.unitPrice ?? '' }'),
          Text('Total Price: ${product.totalPrice ?? '' }'),
        ],
      ),
      trailing: Wrap(
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
          IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
        ],
      ),
    );
  }
}