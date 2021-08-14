
import 'dart:convert';

import 'package:http/http.dart';
import 'package:untitled/constants.dart';

class CategoriesList
{
  Future<List<String>> getData() async {
    Response category = await get(Uri.parse(mainURL+"/products/categories"));
    List<dynamic> data = jsonDecode(category.body);
    List<String> category1 = data.cast<String>();
    return category1;
  }
}

