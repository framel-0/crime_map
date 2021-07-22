import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/crime/crime_form/crime_form_bloc.dart';
import '../../../core/colors.dart';
import '../../../routes/router.gr.dart';

class ImageField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String path;
    return BlocBuilder<CrimeFormBloc, CrimeFormState>(
      buildWhen: (previous, current) =>
          previous.crime.image != current.crime.image,
      builder: (context, state) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton.icon(
                  onPressed: () async {
                    // ExtendedNavigator.of(context).pushImagePickerPage();
                    final String? path = await context.router
                        .push(ImagePickerRoute()) as String?;

                    if (path != null) {
                      context.read<CrimeFormBloc>().add(
                            CrimeFormEvent.imageChanged(path),
                          );
                    }
                  },
                  icon: const Icon(Icons.camera_alt_outlined),
                  color: colorSecondary,
                  label: const Text('Add Picture'),
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 15.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  textColor: Colors.white,
                ),
              ],
            ),
            _formSpace(),
            Container(
              child: (state.crime.image != null)
                  ? Text("${state.crime.image}")
                  : Container(),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        );
      },
    );
  }

  Widget _formSpace() {
    return const SizedBox(
      height: 12,
    );
  }
}
