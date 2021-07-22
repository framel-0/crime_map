import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart' as dtz;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/crime/crime_form/crime_form_bloc.dart';
import '../../../domain/crime/crime.dart';
import '../../../injection.dart';
import '../../routes/router.gr.dart';
import 'widgets/crime_form.dart';
import 'widgets/saving_in_progress_overlay_widget.dart';

class CrimeFormPage extends StatelessWidget {
  final Crime? editedCrime;

  const CrimeFormPage({Key? key, this.editedCrime}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CrimeFormBloc>(
            create: (_) => getIt<CrimeFormBloc>()
              ..add(
                CrimeFormEvent.initialized(
                  dtz.optionOf(editedCrime),
                ),
              )),
        // BlocProvider(create: (_) => getIt<BottomNavigationBloc>()),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: BlocBuilder<CrimeFormBloc, CrimeFormState>(
            buildWhen: (previous, current) =>
                previous.isEditing != current.isEditing,
            builder: (context, state) {
              return Text(
                  state.isEditing ? 'Edit an event' : 'Create an event');
            },
          ),
          actions: [],
        ),
        body: const CrimeFormPageScaffold(),
      ),
    );
  }
}

class CrimeFormPageScaffold extends StatelessWidget {
  const CrimeFormPageScaffold({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CrimeFormBloc, CrimeFormState>(
      listenWhen: (previous, current) =>
          previous.saveFailureOrSuccessOption !=
          current.saveFailureOrSuccessOption,
      listener: (context, state) {
        state.saveFailureOrSuccessOption.fold(
          () {},
          (either) {
            either.fold(
              (failure) {
                // return FlushbarHelper.createError(
                //   message: failure.map(
                //     unexpected: (_) => 'Unexpected',
                //   ),
                // ).show(context);
              },
              (_) {
                context.router.navigate(const CrimeMapRoute());
              },
            );
          },
        );
      },
      buildWhen: (previous, current) => previous.isSaving != current.isSaving,
      builder: (context, state) {
        return Stack(
          children: [
            const CrimeForm(),
            // EventFormPageScaffold(
            //   repository: getIt<IEventTypeRepository>(),
            // ),
            SavingInProgressOverlay(
              isSaving: state.isSaving,
            )
          ],
        );
      },
    );
  }
}
