import 'package:flutter/material.dart';

class Testfirst extends StatelessWidget {
  const Testfirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 500,
          width: double.infinity,
          color: Colors.green[100],
          child: Image.asset('assets/product.png', fit: BoxFit.cover),
        ),
        Positioned(
          bottom: 90.0,
          child: Container(
            color: Colors.black45,
            child: Text("Green Cleaning for a Healthier Tomorrow",
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.white)),
          ),
        ),
        Positioned(
          bottom: 40,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Shop Now'),
          ),
        )
      ],
    );
  }
}
