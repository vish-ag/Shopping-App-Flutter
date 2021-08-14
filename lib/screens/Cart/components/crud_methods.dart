
import 'package:cloud_firestore/cloud_firestore.dart';

class ProductCrudMethods {

  FirebaseFirestore db = FirebaseFirestore.instance;

  Future<void> addProduct(productData) async {
    await FirebaseFirestore.instance.collection("cart").add(productData).catchError((e) {
      print(e);
    });
  }

}