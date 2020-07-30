import 'package:flutter/material.dart';

class Product {
  String imageUrl, productName, units, description;
  int id;
  double price;
  Color bgColor;
  String cal;
  String prot;
  String fat;
  String carb;

  Product(
      {this.imageUrl,
      this.cal,
      this.prot,
      this.fat,
      this.carb,
      this.productName,
      this.units,
      this.description,
      this.price,
      this.id,
      this.bgColor});
}

List<Product> products = [
  Product(
      cal: "51",
      prot: "1.2 g",
      fat: "0.3 g",
      carb: "12 g",
      imageUrl: "assets/images/peach.png",
      bgColor: Color(0xffFCEEE3),
      units: "1 lb",
      productName: "Peaches",
      description: peachDescription,
      id: 1,
      price: 2.99),
  Product(
      cal: "99",
      prot: "1.4 g",
      fat: "0.6 g",
      carb: "24.7 g",
      imageUrl: "assets/images/mango.png",
      units: "1 pc",
      bgColor: Color(0xffFFF9E3),
      productName: "Mago",
      description: mangoDescription,
      id: 2,
      price: 0.99),
  Product(
      cal: "32",
      prot: "0.7 g",
      fat: "0.3 g",
      carb: "7.7 g",
      imageUrl: "assets/images/strawberry.png",
      units: "1 lb",
      bgColor: Color(0xffFFEFEF),
      productName: "Strawberry",
      description: strawberryDescription,
      id: 3,
      price: 3.99),
  Product(
      cal: "42",
      prot: "0.8 g",
      fat: "0.4 g",
      carb: "10 g",
      imageUrl: "assets/images/kiwi.png",
      bgColor: Color(0xffF1FAE1),
      productName: "Kiwi",
      units: "1 lb",
      description: kiwiDescription,
      id: 4,
      price: 2.99),
];

String kiwiDescription =
    "Kiwifruit, or Chinese gooseberry, is the edible berry of several species of woody vines in the genus Actinidia. The most common cultivar group of kiwifruit is oval, about the size of a large hen's egg: 5–8 centimetres in length and 4.5–5.5 cm in diameter";
String strawberryDescription =
    "The garden strawberry is a widely grown hybrid species of the genus Fragaria, collectively known as the strawberries, which are cultivated worldwide for their fruit. The fruit is widely appreciated for its characteristic aroma, bright red color, juicy texture, and sweetness.";
String mangoDescription =
    "A mango is a juicy stone fruit produced from numerous species of tropical trees belonging to the flowering plant genus Mangifera, cultivated mostly for their edible fruit. Most of these species are found in nature as wild mangoes. The genus belongs to the cashew family Anacardiaceae.";
String peachDescription =
    "The peach is a deciduous tree native to the region of Northwest China between the Tarim Basin and the north slopes of the Kunlun Mountains, where it was first domesticated and cultivated. It bears edible juicy fruits with various characteristics, most called peaches and others, nectarines.";
