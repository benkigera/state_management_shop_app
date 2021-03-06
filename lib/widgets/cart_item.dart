import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String id;
  final String productId;
  final String price;
  final int quantity;
  final String title;

  const CartItem(this.id, this.productId, this.price, this.quantity,
      this.title);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
        background: Container(
          color: Theme
              .of(context)
              .errorColor,
          child: Icon(
            Icons.delete,
            color: Colors.white,
            size: 40,
          ),
          alignment: Alignment.centerRight,
          padding: EdgeInsets.only(right: 20),
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
        ),
        direction: DismissDirection.endToStart,
        confirmDismiss: (direction) {
          return showDialog(
              context: context,
              builder: (context) =>
                  AlertDialog(
                    title: Text('Are you sure?'),
                    content: Text('Do you want to remove item from the cart?'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(false);
                        },
                        child: Text('No'),
                      ),
                      TextButton(onPressed: () {
                        Navigator.of(context).pop(true);
                      }, child: Text('Yes'))
                    ],
                  ));
        },
        key: ValueKey(id),
        child: Card(
          margin: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 4,
          ),
          child: Padding(
            padding: EdgeInsets.all(8),
            child: ListTile(
              leading: CircleAvatar(
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: FittedBox(
                    child: Text('\$$price'),
                  ),
                ),
              ),
              title: Text(title),
              subtitle: Text('Total: \$price'),
              trailing: Text('$quantity x'),
            ),
          ),
        ));
  }
}
