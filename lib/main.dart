import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_shop_app/providers/OrderItemModel.dart';
import 'package:state_management_shop_app/screens/cart_screen.dart';
import 'package:state_management_shop_app/screens/edit_product_screen.dart';
import 'package:state_management_shop_app/screens/orders_screen.dart';
import 'package:state_management_shop_app/screens/product_details_screen.dart';
import 'package:state_management_shop_app/screens/user_product_screen.dart';
import './providers/products.dart';
import './providers/cart.dart';
import 'screens/product_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
        ChangeNotifierProvider.value(
          value: Orders(),
        )
      ],
      child: MaterialApp(
          title: 'MyShop',
          theme: ThemeData(
            primarySwatch: Colors.purple,
            accentColor: Colors.deepOrange,
            fontFamily: 'Lato',
          ),
          home: ProductsOverviewScreen(),
          routes: {
            ProductDetailsScreen.routeName: (ctx) => ProductDetailsScreen(),
            CartScreen.routeName: (ctx) => CartScreen(),
            OrderScreen.routeName: (ctx) => OrderScreen(),
            UserProductScreen.routeName: (ctx) => UserProductScreen(),
            EditProductScreen.routeName:(ctx)=> EditProductScreen(),
          }),
    );
  }
}
