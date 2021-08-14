import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/screens/home/components/body.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.teal,
      elevation: 0,
      // leading: Icon(
      //   Icons.arrow_left_sharp,
      //   color: Colors.black,
      // ),
      actions: [
        IconButton(
          onPressed: () {
            _signOut();
          },
          icon: Icon(Icons.person),
          color: Colors.black,
        ),
        IconButton(
          onPressed: () {
            Fluttertoast.showToast(
              //TODO: Implement Search in Home Screen
                msg: "Feature Not Implemented",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.greenAccent,
                textColor: Colors.black,
                fontSize: 16.0);
          },
          icon: Icon(Icons.search),
          color: Colors.black,
        ),
        IconButton(
          onPressed: () {
            Fluttertoast.showToast(
              //TODO: Implement Cart in Home Screen
                msg: "Feature Not Implemented",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.greenAccent,
                textColor: Colors.black,
                fontSize: 16.0);
          },
          icon: Icon(Icons.shopping_cart),
          color: Colors.black,
        ),
        SizedBox(
          width: kDefaultPaddin / 2,
        ),
      ],
    );
  }

  Future<void> _signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      print(e.toString());
    }
  }
}
