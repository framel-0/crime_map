import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/crime/crime_form/crime_form_bloc.dart';
import 'crime_location_field_widget.dart';
import 'image_field_widget.dart';

class CrimeForm extends StatefulWidget {
  const CrimeForm({
    Key? key,
  }) : super(key: key);
  @override
  _CrimeFormState createState() => _CrimeFormState();
}

class _CrimeFormState extends State<CrimeForm> {
  String? path;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CrimeFormBloc, CrimeFormState>(
      buildWhen: (previous, current) =>
          previous.showErrorMessage != current.showErrorMessage,
      builder: (context, state) {
        return Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 16.0,
              ),
              child: Column(
                children: [
                  _formSpace(),
                  EventLocationField(),
                  _formSpace(),
                  ImageField(),
                  _formSpace(),
                  Container(
                    child: path == null
                        ? Container()
                        : Container(
                            height: 280,
                            child: Image.file(
                              File(path!),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      // shape: const RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      //     side: BorderSide(color: Colors.white)),
                      // padding: const EdgeInsets.symmetric(vertical: 12.0),
                      onPressed: () => context
                          .read<CrimeFormBloc>()
                          .add(const CrimeFormEvent.saved()),
                      child: const Text(
                        'SUBMIT',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
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
