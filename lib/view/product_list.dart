import 'package:flutter/material.dart';
import 'package:online_shop/controller/product_controller.dart';
import 'package:online_shop/view/widget/product_item.dart';

import 'package:provider/provider.dart'; //stl

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<ProductController>(context, listen: true);
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) => ProductItem(
          product: controller.myProduct[index],
          controller: controller,
        ),
        itemCount: controller.myProduct.length,
      ),
    );
  }
}
