import "package:flutter/material.dart";

class CustomContainer extends StatelessWidget {
  final String header1;
  final String header2;
  final Color bgColor;

  const CustomContainer({Key key, this.bgColor, this.header1, this.header2})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(header1, style: TextStyle(color: Colors.grey)),
          SizedBox(height: 5),
          Text(header2, style: TextStyle(
            fontWeight: FontWeight.bold, 
            fontSize: 18
          ),)
        ],
      ),
    );
  }
}
