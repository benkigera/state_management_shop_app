import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:state_management_shop_app/providers/OrderItemModel.dart';

class OrderItem extends StatelessWidget {
  final OrderItemModel order;

  const OrderItem(this.order);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            title: Text('\$${order.amount}'),
            subtitle:
                Text(DateFormat('dd MM yyyy hh:mm').format(order.dateTime)),
          )
        ],
      ),
    );
  }
}
