import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      color: Colors.green[900],
      child: Column(
        children: [
          const Text(
            'Copyright © Maavricks',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                IconButton.filled(
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(Colors.green[800])),
                  onPressed: () {},
                  icon: const Icon(Icons.facebook),
                ),
                const SizedBox(width: 20),
                IconButton.filled(
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(Colors.green[800])),
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart_checkout_outlined),
                ),
                const SizedBox(width: 20),
                IconButton.filled(
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(Colors.green[800])),
                  onPressed: () {},
                  icon: const Icon(Icons.mail_outline),
                ),
                const SizedBox(width: 20),
                IconButton.filled(
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(Colors.green[800])),
                  onPressed: () {},
                  icon: const Icon(Icons.call),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
