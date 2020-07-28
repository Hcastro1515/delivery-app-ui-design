import 'package:flutter/material.dart';

class Product {
  String imageUrl, productName, units, description;
  int id;
  double price;
  Color bgColor;

  Product(
      {this.imageUrl,
      this.productName,
      this.units,
      this.description,
      this.price,
      this.id,
      this.bgColor});
}

List<Product> products = [
  Product(
      imageUrl: "",
      bgColor: Color(0xffFCEEE3),
      units: "1 lb",
      productName: "Peaches",
      description:
          "The peach is a deciduous tree native to the region of Northwest China between the Tarim Basin and the north slopes of the Kunlun Mountains, where it was first domesticated and cultivated. It bears edible juicy fruits with various characteristics, most called peaches and others, nectarines.",
      id: 1,
      price: 2.99),
  Product(
      imageUrl: "",
      units: "1 pc",
      bgColor: Color(0xffFFF9E3),
      productName: "Mago",
      description:
          "A mango is a juicy stone fruit produced from numerous species of tropical trees belonging to the flowering plant genus Mangifera, cultivated mostly for their edible fruit. Most of these species are found in nature as wild mangoes. The genus belongs to the cashew family Anacardiaceae.",
      id: 2,
      price: 0.99),
  Product(
      imageUrl: "",
      units: "1 lb",
      bgColor: Color(0xffFFEFEF),
      productName: "Strawberry",
      description:
          "The garden strawberry is a widely grown hybrid species of the genus Fragaria, collectively known as the strawberries, which are cultivated worldwide for their fruit. The fruit is widely appreciated for its characteristic aroma, bright red color, juicy texture, and sweetness.",
      id: 3,
      price: 3.99),
  Product(
      imageUrl: "",
      bgColor: Color(0xffF1FAE1),
      productName: "Kiwi",
      units: "1 lb",
      description:
          "Kiwifruit, or Chinese gooseberry, is the edible berry of several species of woody vines in the genus Actinidia. The most common cultivar group of kiwifruit is oval, about the size of a large hen's egg: 5–8 centimetres in length and 4.5–5.5 cm in diameter",
      id: 4,
      price: 2.99),
];
