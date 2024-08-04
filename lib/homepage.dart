import 'package:flutter/material.dart';
import 'package:maavricks/appbar.dart';
import 'package:maavricks/footer.dart';
//import 'package:maavricks/firstSection.dart';
import 'package:maavricks/product.dart';
import 'package:maavricks/testfirst.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Appbarr(),
      body: SingleChildScrollView(
        //padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Testfirst(),
            const SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Products',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(fontWeight: FontWeight.w800),
              ),
            ),
            const SizedBox(height: 100),
            const Product(),
            const SizedBox(height: 60),
            Footer()
          ],
        ),
      ),
    );
  }
}
