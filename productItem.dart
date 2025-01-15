import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Image.asset(
                "assets/yellowdress.png")),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const Text(
              "Yellow Dress",
              style: TextStyle(fontSize: 30),
            ),
            Builder(builder: (context) {
              return IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(const SnackBar(
                      content: Text(
                          "Item added to the cart"),
                      duration: Duration(seconds: 4),
                      backgroundColor: Colors.blue,
                    ));
                  },
                  icon: const Icon(
                    Icons.shopping_cart,
                    size: 30,
                  ));
            })
          ],
        )
      ],
    );
  }
}
