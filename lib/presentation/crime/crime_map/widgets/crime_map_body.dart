import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../application/crime/crime_watcher/crime_watcher_bloc.dart';
import '../../../../domain/crime/crime.dart';
import '../../../routes/router.gr.dart';
import 'crime_map_critical_failure.dart';

class CrimeMapBody extends StatelessWidget {
  const CrimeMapBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const CameraPosition _kGooglePlex = CameraPosition(
      target: LatLng(5.603730104902301, -0.18697738019649837),
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
              onMapCreated: (GoogleMapController controller) {},
              myLocationEnabled: true,
              zoomControlsEnabled: false,
              markers: state.crimes.iter
                  .map(
                    (e) => _registerMarker(
                      onTapInfoWindow: () => AutoRouter.of(context).push(
                        CrimeDetailRoute(crime: e),
                      ),
                      crime: e,
                    ),
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
    GestureTapCallback? onTapInfoWindow,
    required Crime crime,
  }) {
    return Marker(
      markerId: MarkerId(crime.reportNumber.toString()),
      position:
          LatLng(crime.latitude.getOrCrash(), crime.longitude.getOrCrash()),
      infoWindow: InfoWindow(
        title:
            'Location: ${crime.latitude.getOrCrash()} , ${crime.longitude.getOrCrash()}',
        snippet: 'Report Number: ${crime.reportNumber}',
        onTap: onTapInfoWindow,
      ),
      icon: mapMarkers(crime.reportNumber),
    );
  }

  BitmapDescriptor mapMarkers(int reportNumber) {
    late double markerColor;
    if (reportNumber < 5) {
      markerColor = BitmapDescriptor.hueGreen;
    }
    if (reportNumber >= 5 && reportNumber <= 20) {
      markerColor = BitmapDescriptor.hueOrange;
    }
    if (reportNumber > 20) {
      markerColor = BitmapDescriptor.hueRed;
    }
    return BitmapDescriptor.defaultMarkerWithHue(markerColor);
  }
}
