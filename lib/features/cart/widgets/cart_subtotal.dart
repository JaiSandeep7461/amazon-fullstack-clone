import 'package:amazon_clone_tutorial/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardSubTotal extends StatelessWidget {
  const CardSubTotal({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.watch<UserProvider>().user;
    int sum=0;
    user.cart.map((e) => sum+=e['quantity']*e['product']['price'] as int).toList();

    return Container(
      margin: const EdgeInsets.all(10),
      child: Row(
        children: [
          const Text(
            'Subtotal',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
              '\$$sum',
              style:const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
          ),
            ),
        ],
      ),
    );
  }
}
