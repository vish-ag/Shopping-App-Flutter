import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Map product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(
        product["description"],
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
