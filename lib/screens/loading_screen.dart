import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:clima/services/location.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print('longitude : ${location.longitude}');
    print('latitude : ${location.latitude}');

    print('initSatate Called');
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
