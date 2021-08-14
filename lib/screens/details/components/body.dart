import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/screens/details/components/add_to_cart.dart';
import 'package:untitled/screens/details/components/counter_with_fav_button.dart';
import 'package:untitled/screens/details/components/product_title_with_image.dart';

import 'description.dart';

class Body extends StatelessWidget {
  final Map product;
  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ProductTitleWithImage(product: product),
          Container(
            // margin: EdgeInsets.only(top: size.height * 0.3),
            //height: 500,
            padding: EdgeInsets.only(
              left: kDefaultPaddin,
              right: kDefaultPaddin,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
            ),
            child: Column(
              children: <Widget>[
                // ColorAndSize(product: product),//Size removed
                SizedBox(height: kDefaultPaddin*2),
                Row(
                  children: [
                    Text(
                      "Description",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                Description(product: product),
                SizedBox(height: kDefaultPaddin/2),
                CounterWithFavButton(),
                SizedBox(height: kDefaultPaddin/2),
                AddToCart(product: product),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

