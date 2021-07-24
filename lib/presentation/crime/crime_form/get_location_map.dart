import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GetLocationMap extends StatefulWidget {
  @override
  _GetLocationMapState createState() => _GetLocationMapState();
}

class _GetLocationMapState extends State<GetLocationMap> {
  late GoogleMapController mapController;
  LatLng initalPosition = const LatLng(5.603730104902301, -0.18697738019649837);
  LatLng latLng = const LatLng(5.603730104902301, -0.18697738019649837);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Set Location \nLong press marker to move'),
      ),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: initalPosition,
              zoom: 13,
            ),
            onMapCreated: onCreated,
            myLocationEnabled: true,
            // ignore: prefer_collection_literals
            markers: [
              Marker(
                onTap: () {},
                draggable: true,
                markerId: const MarkerId('Marker'),
                position: initalPosition,
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
              child: ElevatedButton.icon(
                onPressed: () => context.router.pop(latLng),
                icon: const Icon(Icons.add_location_outlined),
                label: const Text('Select Location'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                  onPrimary: Colors.white,
                  onSurface: Colors.grey,
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 15.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
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

  void onCreated(GoogleMapController controller) => setState(() {
        mapController = controller;
      });
}
