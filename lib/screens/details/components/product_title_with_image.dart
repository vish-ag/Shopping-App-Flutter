import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Map product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // Text(
          //   "Aristocratic Hand Bag",
          //   style: TextStyle(color: Colors.white),
          // ),
          Container(
            height: 225,
            child: Hero(
              tag: "${product["id"]}",
              child: Image.network(
                product["image"],
                fit: BoxFit.fill,
              ),
            ),
          ),
          Text(
            product["title"],
            style: Theme.of(context).textTheme.headline5!.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: kDefaultPaddin-5,
          ),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Price\n",
                    ),
                    TextSpan(
                      text: "\$${product["price"]}",
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: kDefaultPaddin,
              ),
              // Expanded(
              //   child: Hero(
              //     tag: "${product["id"]}",
              //     child: Image.network(
              //       product["image"],
              //       fit: BoxFit.fill,
              //     ),
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
