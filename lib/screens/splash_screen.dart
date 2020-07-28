import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import "./main_screen.dart";

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "DeliDash",
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(height: 10),
            Column(
              children: <Widget>[
                Text("Delivery Right to",
                    style: Theme.of(context).textTheme.headline1),
                Text("your door!",
                    style: Theme.of(context).textTheme.headline1),
              ],
            ),
            SizedBox(height: 50),
            Container(height: 300, width: double.infinity, child: splashImage),
            SizedBox(height: 50),
            MaterialButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => HomeScreen()));
              },
              elevation: 3.0,
              minWidth: 170,
              height: 50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
              child: Text(
                "Get Started",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              color: Theme.of(context).primaryColor,
            )
          ],
        ),
      )),
    );
  }
}

final String assetName = "assets/images/delivery.svg";
final Widget splashImage = SvgPicture.asset(assetName);
