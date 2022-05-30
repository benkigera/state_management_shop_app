import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_shop_app/providers/OrderItemModel.dart';
import 'package:state_management_shop_app/widgets/order_item.dart';

class OrderScreen extends StatelessWidget {
  static const routeName = "/-product-detail";

  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Orders"),
      ),
      body: ListView.builder(
        itemCount: orderData.orders.length,
          itemBuilder: (ctx, i) => OrderItem(orderData.orders[i])),
    );
  }
}
