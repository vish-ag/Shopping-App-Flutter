import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/models/product.dart';
import 'package:untitled/screens/details/details_screen.dart';
import 'package:untitled/screens/home/components/item_card.dart';


int selectedIndex = 0;
List<String> categories = [];
List prod = [];
class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // @override
  // void initState(){
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Categories(),
        buildProductList(),
      ],
    );
  }



  Widget Categories() {
    return Container(
      height: 75,
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategories(index),
        ),

      ),
    );
  }

  Widget buildCategories(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
            // context;
          });
          // Navigator.pop(context);
          //
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //       builder: (context) => homeScreen()
          //   ),
          // );
          // Navigator.pushReplacement(
          //     context,
          //     MaterialPageRoute(
          //       builder:(context) => homeScreen(),
          //     ),
          // );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin-5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                categories[index].toUpperCase(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: selectedIndex==index? kTextColor: kTextLightColor,
                ),
              ),
              Container(
                height: 2,
                width: 30,
                color: selectedIndex== index ? Colors.black: Colors.transparent,
                margin: EdgeInsets.only(top: kDefaultPaddin/4),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class buildProductList extends StatelessWidget {
  const buildProductList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List>(
      future: ProductList(categories[selectedIndex]).getData(),
      // future: ProductList("Men's Clothing").getData(),
      builder: (context, AsyncSnapshot snapshot){
        if(snapshot.hasData){
          prod = snapshot.data!;
          // prod = snapshot.data!.toList<Product1>();
          return
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
                child: GridView.builder(
                  itemCount: snapshot.data!.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: kDefaultPaddin,
                    crossAxisSpacing: kDefaultPaddin,
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                  ),
                  itemBuilder: (context, index) => ItemCard(
                    product: prod[index],
                    press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            DetailsScreen(product: prod[index]/*prod[index]*/))),
                  ),
                ),

              ),
            );
        }
        else{
          return Center(
            child: SpinKitCubeGrid(
              color: Colors.black,
            ),
          );
        }
      },
    );
  }
}







