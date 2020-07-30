import 'package:flutter/material.dart';
import 'package:speed_design_1/models/products.dart';
import 'components/custom_container.dart';

class DetailScreen extends StatelessWidget {
  final Product product;

  const DetailScreen({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _customModelView(context),
              _buildNameSection(context),
              SizedBox(height: 8.0),
              _buildDescription(context),
              _nutritionSection(context),
              _buildButton()
            ],
          ),
        ),
      ),
    );
  }

  Widget _customModelAppBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              icon: Icon(Icons.keyboard_arrow_left),
              iconSize: 35,
              onPressed: () => Navigator.of(context).pop()),
          IconButton(
            icon: Icon(Icons.favorite_border),
            iconSize: 35,
            onPressed: () {},
          )
        ],
      ),
    );
  }

  Widget _customModelView(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              _customModelAppBar(context),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Image.asset(product.imageUrl),
                ),
              ),
            ],
          ),
        ),
        height: 320,
        width: double.infinity,
        decoration: BoxDecoration(
          color: product.bgColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }

  Widget _buildNameSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                product.productName,
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                "\$${product.price}",
                style: Theme.of(context).textTheme.headline2,
              ),
            ],
          ),
          Text(product.units + " package",
              style: TextStyle(color: Colors.grey, fontSize: 18))
        ],
      ),
    );
  }

  Widget _buildDescription(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Description",
              style: Theme.of(context).textTheme.headline1,
            ),
            SizedBox(height: 5.0),
            Text(product.description,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400))
          ]),
    );
  }

  Widget _nutritionSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Nutrition",
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              CustomContainer(
                bgColor: product.bgColor,
                header1: "CAL",
                header2: product.cal,
              ),
              CustomContainer(
                bgColor: product.bgColor,
                header1: "PROT",
                header2: product.prot,
              ),
              CustomContainer(
                bgColor: product.bgColor,
                header1: "FAT",
                header2: product.fat,
              ),
              CustomContainer(
                bgColor: product.bgColor,
                header1: "CARB",
                header2: product.carb,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: MaterialButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          onPressed: () {},
          color: Color(0xffFF8D5F),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
            child: Text("Add to Bag",
                style: TextStyle(color: Colors.white, fontSize: 20)),
          )),
    );
  }
}
