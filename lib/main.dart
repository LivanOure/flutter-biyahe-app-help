
import 'package:biyahe_ver1/services/location_services.dart';
import 'package:biyahe_ver1/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

import 'datamodels/user_location.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GoogleMapController mapController;

  final LatLng _center = const LatLng(9.8995197, 123.5856543);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserLocation>(
        builder: (context) => LocationService().locationStream,
        child: MaterialApp(title: 'Biyahe Demo', home: HomeView())
    );
  }

}
