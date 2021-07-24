import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../application/crime/crime_form/crime_form_bloc.dart';
import '../../../core/util.dart';
import '../../../routes/router.gr.dart';

class EventLocationField extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    return BlocBuilder<CrimeFormBloc, CrimeFormState>(
        buildWhen: (previous, current) =>
            previous.crime.latitude != current.crime.latitude,
        builder: (context, state) {
          return TextFormField(
            readOnly: true,
            controller: textEditingController,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.text,
            decoration: textDecoration(label: 'Crime Location'),
            onTap: () async {
              final LatLng? res =
                  await context.router.push(const GetLocationMap()) as LatLng?;
              //  ExtendedNavigator.of(context)
              //     .pushGetLocationMap() as LatLng;

              if (res != null) {
                await getLoc(res.latitude, res.longitude)
                    .then((value) => textEditingController.text = value);
                context.read<CrimeFormBloc>().add(
                      CrimeFormEvent.locationChanged(res),
                    );
              }
            },
            validator: (value) =>
                context.read<CrimeFormBloc>().state.crime.latitude.value.fold(
                      (f) => f.maybeMap(
                        invalidCoordinate: (_) => 'Invalid Crime Location',
                        orElse: () => null,
                      ),
                      (r) => null,
                    ),
          );
        });
  }

  Future<String> getLoc(double lat, double lng) async {
    final List<Placemark> placemarks = await placemarkFromCoordinates(lat, lng);

    final StringBuffer buffer = StringBuffer();
    buffer.writeAll({
      placemarks.first.street,
      placemarks.first.subLocality,
      placemarks.first.locality
    }, ' ,');

    return buffer.toString();
  }
}
