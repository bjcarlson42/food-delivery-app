import 'package:flutter/material.dart';
import 'package:foodDeleveryApp/components/item_row.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(More());

class More extends StatefulWidget {
  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {
  GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: new FloatingActionButton(
          onPressed: () {
            _settingModalBottomSheet(context);
          },
          child: new Icon(Icons.add),
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
        ),
      ),
    );
  }
}

void _settingModalBottomSheet(context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext bc) {
      return Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Ben, your order is 4 min away...',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              itemRow(),
            ],
          ),
        ),
      );
    },
  );
}
