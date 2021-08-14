import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:untitled/models/categories_list.dart';
import 'package:untitled/screens/home/components/body.dart';
import 'package:untitled/screens/home/home_screen.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState(
  );
}

class _WelcomeState extends State<Welcome> {
  User? currentUser = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<String>>(
      future: CategoriesList().getData(),
      builder: (context, AsyncSnapshot<List<String>> snapshot) {
        if(snapshot.hasData){
          categories = snapshot.data!;
          return homeScreen();
        }
        else{
          return Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "${currentUser!.displayName}",
                  style: TextStyle(
                    fontSize: 32
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                SpinKitChasingDots(
                  color: Colors.black,
                )
              ],
            ),
          );
        }
      },
    );
  }
}

