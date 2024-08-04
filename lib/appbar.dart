import 'package:flutter/material.dart';

class Appbarr extends StatelessWidget implements PreferredSizeWidget {
  const Appbarr({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return AppBar(
          title: Image.asset(
            'assets/maavricksLogo.png',
            height: 50,
            width: 250,
          ),
          shadowColor: Colors.black38,
          actions: constraints.maxWidth > 650
              ? [
                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 6),
                    child: Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text('Products'),
                        ),
                        const SizedBox(width: 16),
                        TextButton(
                          onPressed: () {},
                          child: const Text('Contact us'),
                        ),
                        const SizedBox(width: 16),
                        TextButton(
                          onPressed: () {},
                          child: const Text('About us'),
                        ),
                        const SizedBox(width: 16),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Amazon Store'),
                        ),
                      ],
                    ),
                  ),
                ]
              : [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Amazon Store'),
                  ),
                ],
        );
      },
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
