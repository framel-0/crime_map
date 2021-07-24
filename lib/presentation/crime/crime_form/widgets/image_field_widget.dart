import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/crime/crime_form/crime_form_bloc.dart';
import '../../../routes/router.gr.dart';

class ImageField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CrimeFormBloc, CrimeFormState>(
      buildWhen: (previous, current) =>
          previous.crime.image != current.crime.image,
      builder: (context, state) {
        return Column(
          children: [
            const Text('Crime Image'),
            _formSpace(),
            GestureDetector(
              // When we tap we call selectImage
              onTap: () async {
                final String? path =
                    await context.router.push(ImagePickerRoute()) as String?;

                if (path != null) {
                  context.read<CrimeFormBloc>().add(
                        CrimeFormEvent.imageChanged(path),
                      );
                }
              },
              child: Container(
                height: 250,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10)),
                alignment: Alignment.center,
                // If the selected image is null we show "Tap to add post image"
                child: !state.crime.image.isValid()
                    ? Text(
                        'Tap to add crime image',
                        style: TextStyle(color: Colors.grey[400]),
                      )
                    // If we have a selected image we want to show it
                    : Image.file(File(state.crime.image.getOrCrash())),
              ),
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
