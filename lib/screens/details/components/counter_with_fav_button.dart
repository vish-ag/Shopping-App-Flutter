import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:untitled/screens/details/components/cart_counter.dart';
class CounterWithFavButton extends StatelessWidget {
  const CounterWithFavButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: <Widget>[
        CartCounter(),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 10,
          ),
          child: IconButton(
            iconSize: 35,
            icon: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            onPressed: () {
              //TODO: Implement Wishlist
              Fluttertoast.showToast(
                  msg: "Feature Not Implemented",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.greenAccent,
                  textColor: Colors.black,
                  fontSize: 16.0);
            },
          ),
        ),
      ],
    );
  }
}

