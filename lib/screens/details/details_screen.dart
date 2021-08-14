import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Map product;

  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: Body(
        product: product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.teal,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_outlined,
          color: Colors.black,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {
            Fluttertoast.showToast(
              //TODO: Implement Search in Details Screen
                msg: "Feature Not Implemented",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.greenAccent,
                textColor: Colors.black,
                fontSize: 16.0);
          },
          icon: Icon(
            Icons.search,
            color: Colors.black,
          ),

        ),
        IconButton(
          onPressed: () {
            //TODO: Implement Cart in Details Screen
            Fluttertoast.showToast(
                msg: "Feature Not Implemented",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.greenAccent,
                textColor: Colors.black,
                fontSize: 16.0);
          },
          icon: Icon(
            Icons.shopping_cart,
            color: Colors.black,
          ),
        ),
        SizedBox(
          width: kDefaultPaddin/2,
        )
      ],
    );
  }
}
