import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/cart.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Cart Items"),
        ),
        body: Consumer<Cart>(
          builder: (context, value, child) {
            return Column(
              children: [
                Expanded(
                    child: ListView.builder(
                        itemCount: value.cartItems.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: ListTile(
                                  leading: Image.asset(
                                    value.cartItems[index][2],
                                    height: 32,
                                  ),
                                  title: Text(value.cartItems[index][0]),
                                  subtitle:
                                      Text('Ksh ' + value.cartItems[index][1]),
                                  trailing: IconButton(
                                    icon: const Icon(Icons.remove_circle),
                                    onPressed: () => Provider.of<Cart>(context,
                                            listen: false)
                                        .removeCart(index),
                                  )),
                            ),
                          );
                        })),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(8)),
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Total Price"),
                          Text(value.calculateTotal())
                        ],
                      ),
                    ],
                  ),
                )
              ],
            );
          },
        ));
  }
}
