
import 'dart:convert';
import 'package:http/http.dart';
import 'package:untitled/constants.dart';


class ProductList {

  final String category;

  ProductList(this.category);

  Future<List> getData() async {
    Response prod = await get(
        Uri.parse(mainURL + "/products/category/" + category.toLowerCase()));
    List data = jsonDecode(prod.body);
    print(data);
    return data;
  }
}
