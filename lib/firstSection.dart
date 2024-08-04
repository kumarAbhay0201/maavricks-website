import 'package:flutter/material.dart';

class Firstsection extends StatelessWidget {
  const Firstsection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Green Cleaning for\na Healthier Tomorrow",
              style: Theme.of(context)
                  .textTheme
                  .displayLarge
                  ?.copyWith(fontWeight: FontWeight.w900),
            ),
            const SizedBox(height: 10),
            Text(
              'Maavricks offers premium organic vegetable cleaners\nthat deliver safety, sustainability, and a spotless finish.',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontSize: 22),
            ),
            const SizedBox(height: 60),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Shop Now'),
            )
          ],
        ),
        const SizedBox(width: 20),
        Spacer(),
        Image.asset(
          'assets/product.png',
          height: 500,
          width: 500,
        )
      ],
    );
  }
}
