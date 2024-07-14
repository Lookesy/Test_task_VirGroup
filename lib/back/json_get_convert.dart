import 'dart:convert';
import 'package:flutter/services.dart';

//Получение Json файла и конвертация в Map
class ProductDataModel{
  //data Type
  int? id;
  String? category;
  String? name;
  String? image;
  String? price;
  String? weight;
  String? description;
// constructor
  ProductDataModel(
      {
        this.id,
        this.category,
        this.name,
        this.image,
        this.price,
        this.weight,
        this.description
      }
      );
  //method that assign values to respective datatype vairables
  ProductDataModel.fromJson(Map<String,dynamic> json)
  {
    id = json['id'];
    name =json['name'];
    category = json['category'];
    image = json['image'];
    price = json['price'];
    weight = json['weight'];
    description = json['description'];
  }
}

Future<List<ProductDataModel>> readJsonData() async {
  //read json file
  final jsondata = await rootBundle.loadString('assets/json/data.json');
  //decode json data as list
  final list = json.decode(jsondata) as List<dynamic>;

  //map json and initialize using DataModel
  return list.map((e) => ProductDataModel.fromJson(e)).toList();
}