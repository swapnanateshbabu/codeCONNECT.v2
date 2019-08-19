import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapPage extends StatefulWidget {
  @override
  _GoogleMapPageState createState() => _GoogleMapPageState();
}

class _GoogleMapPageState extends State<GoogleMapPage> {
  GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);
   _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black, size: 30.0),
          backgroundColor: Colors.amber,
          elevation: 1.0,
          title: SizedBox(
            height: 15.0,
            child: Image.asset("assets/codeCONNECT_logoname.png"),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 14.0),
              child: Icon(
                Icons.account_circle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Icon(
                Icons.inbox,
              ),
            )
          ],
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 10.0,
          ),
        ),
      ),
    );
  }
}
