import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart'; // Import for LayoutBuilder

class Testfirst extends StatelessWidget {
  const Testfirst({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 800) {
          // Screen width is less than 800, use a RichText for line break
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
                  child: RichText(
                    text: TextSpan(
                      text: 'Green Cleaning for',
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium
                          ?.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                      children: const <TextSpan>[
                        TextSpan(
                          text: '\na Healthier Tomorrow',
                          style: TextStyle(height: 1.2), // Adjust line spacing
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Shop Now'),
                ),
              ),
            ],
          );
        } else {
          // Screen width is greater than or equal to 800, use original Text
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
                  child: Text(
                    "Green Cleaning for a Healthier Tomorrow",
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
              Positioned(
                bottom: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Shop Now'),
                ),
              ),
            ],
          );
        }
      },
    );
  }
}
