import 'package:flutter/material.dart';
import 'package:maavricks/data.dart';
import 'package:maavricks/productcart.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 1079) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: ProductCard(
                  productName: products[0][0],
                  productDescription: products[0][1],
                  productImage: products[0][2],
                  productPrice: products[0][3],
                ),
              ),
              const SizedBox(height: 30),
              ProductCard(
                productName: products[1][0],
                productDescription: products[1][1],
                productImage: products[1][2],
                productPrice: products[1][3],
              ),
              const SizedBox(height: 30),
              ProductCard(
                productName: products[2][0],
                productDescription: products[2][1],
                productImage: products[2][2],
                productPrice: products[2][3],
              ),
            ],
          );
        } else {
          // Screen width is greater than or equal to 1079, use a Row
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ProductCard(
                productName: products[0][0],
                productDescription: products[0][1],
                productImage: products[0][2],
                productPrice: products[0]
                    [3], // Assuming price is added to Product class
              ),
              const SizedBox(width: 30),
              ProductCard(
                productName: products[1][0],
                productDescription: products[1][1],
                productImage: products[1][2],
                productPrice: products[1][3],
              ),
              const SizedBox(width: 30),
              ProductCard(
                productName: products[2][0],
                productDescription: products[2][1],
                productImage: products[2][2],
                productPrice: products[2][3],
              ),
            ],
          );
        }
      },
    );
  }
}
