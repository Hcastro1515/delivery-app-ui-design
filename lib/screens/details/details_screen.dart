import 'package:flutter/material.dart';
import 'package:speed_design_1/models/products.dart';

class DetailScreen extends StatelessWidget {
  final Product product;

  const DetailScreen({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[_customModelAppBar(context), _customModelView()],
      )),
    );
  }

  Widget _customModelAppBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.of(context).pop()),
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
          )
        ],
      ),
    );
  }

  Widget _customModelView() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(product.imageUrl),
        ),
        height: 300,
        width: double.infinity,
        decoration: BoxDecoration(
            color: product.bgColor, borderRadius: BorderRadius.circular(20.0)),
      ),
    );
  }
}
