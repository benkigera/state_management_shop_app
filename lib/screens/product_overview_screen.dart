import 'package:flutter/material.dart';
import 'package:state_management_shop_app/models/product.dart';

import '../widgets/product_grid.dart';
import '../widgets/product_item.dart';

class ProductOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        title: Text('myShop'),
      ),

      body: ProductsGrid(),
    );
  }
}


