import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../core/colors.dart';

class GetLocationMap extends StatefulWidget {
  @override
  _GetLocationMapState createState() => _GetLocationMapState();
}

class _GetLocationMapState extends State<GetLocationMap> {
  Completer<GoogleMapController> _controller = Completer();
  late GoogleMapController mapController;
  late LatLng latLng;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Set Location \nLong press marker to move'),
      ),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: const CameraPosition(
              target: LatLng(0.0, 0.0),
              zoom: 13,
            ),
            onMapCreated: onCreated,
            myLocationEnabled: true,
            // ignore: prefer_collection_literals
            markers: [
              Marker(
                onTap: () {
                  print('Tapped');
                },
                draggable: true,
                markerId: MarkerId('Marker'),
                position: LatLng(0.0, 0.0),
                onDragEnd: (newPosition) {
                  // print('${newPosition.latitude} ${newPosition.longitude}');
                  latLng = newPosition;
                },
              )
            ].toSet(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: RaisedButton.icon(
                onPressed: () => context.router.pop(latLng),
                icon: const Icon(Icons.add_location_outlined),
                color: colorSecondary,
                label: const Text('Set Location'),
                padding: const EdgeInsets.symmetric(
                    vertical: 12.0, horizontal: 15.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                textColor: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  onCreated(GoogleMapController controller) {
    setState(() {
      mapController = controller;
    });
  }
}
