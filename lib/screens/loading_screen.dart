import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();

    getLocation();

    print('initSatate Called');
  }

  void getLocation() async {
    try {
      Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      print(position);
    } catch (e) {
      print(e);
    }
  }

  void somethingThatExpectsLessThan10(int n) {
    if (n > 10) {
      throw 'n is greater than 10, n should always be less than 10.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
    // String myMargin = 'abc';
    // double myMarginAsADouble;
    // try {
    //   myMarginAsADouble = double.parse(myMargin);
    // } catch (e) {
    //   print(e);
    //   // myMarginAsADouble = 30.0;
    // }

    // return Scaffold(
    //   body: Container(
    //     margin: EdgeInsets.all(myMarginAsADouble ?? 100.0), // Null Aware Operator.  myMargin---이 null이면 ?? 뒤로 대체.
    //     color: Colors.red,
    //   ),
    // );
  }
}
