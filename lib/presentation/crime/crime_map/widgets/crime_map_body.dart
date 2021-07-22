import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../application/crime/crime_watcher/crime_watcher_bloc.dart';
import '../../../../domain/crime/crime.dart';
import 'crime_map_critical_failure.dart';

class CrimeMapBody extends StatelessWidget {
  const CrimeMapBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late GoogleMapController _controller;

    const CameraPosition _kGooglePlex = CameraPosition(
      target: LatLng(37.42796133580664, -122.085749655962),
      zoom: 14.4746,
    );

    return BlocBuilder<CrimeWatcherBloc, CrimeWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) {
            // return Container();
            return GoogleMap(
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                _controller = controller;
              },
              myLocationEnabled: true,
              markers: state.crimes.iter
                  .map(
                    (e) => _registerMarker(crime: e),
                  )
                  .toSet(),
            );
          },
          loadFailure: (_) {
            return CrimeMapCriticalFailure();
          },
        );
      },
    );
  }

  Marker _registerMarker({
    GestureTapCallback? onTapMarker,
    required Crime crime,
  }) {
    return Marker(
      onTap: onTapMarker,
      markerId: MarkerId(crime.id.toString()),
      position:
          LatLng(crime.latitude.getOrCrash(), crime.longitude.getOrCrash()),
      infoWindow: const InfoWindow(title: ''),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    );
  }
}
