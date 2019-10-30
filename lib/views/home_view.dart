import 'package:biyahe_ver1/datamodels/user_location.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:async/async.dart';

GoogleMapController mapController;

class HomeView extends StatelessWidget {
  HomeView({Key key}) : super(key: key);




  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }


  @override
  Widget build(BuildContext context) {
    var userLocation = Provider.of<UserLocation>(context);

    LatLng _center = LatLng(userLocation.latitude, userLocation.longitude);

    return Scaffold(
        appBar: AppBar(
          title: Text('Biyahe Map Trial'),
          backgroundColor: Colors.green[700],
        ),
        body: Stack(

          children: <Widget>[
            Container(
              height:600,
                child: GoogleMap(
              onMapCreated: _onMapCreated,
              myLocationButtonEnabled: true,
              myLocationEnabled: true,
              initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 25.0,
              ),
            ),
            ),
            Positioned(
              bottom: 50,
              right: 10,
              child:
              FlatButton(
                child: Icon(Icons.pin_drop, color: Colors.white,),
                color: Colors.green,
                onPressed: _realTimeJeep,
              ),
            )

          ],

        )

    );
  }
}

_realTimeJeep(){

  //const twentyMillis = const Duration(milliseconds:200);
  //new Timer(twentyMillis, () => print('hi!'));

  //var marker = MarkerOptions(
    //position: mapController.cameraPosition.target,
    //icon: BitmapDescriptor.defaultMarker,
    //infoWindowText: InfoWindowText('Magic MArker', 'lololol')
  //);

  //mapController.addMarker(marker);
}

class FireMap extends StatefulWidget{
  State createState() => FireMapState();
}

class FireMapState extends State<FireMap>{
  build(context){
    return Stack(children: <Widget>[],);
  }
}