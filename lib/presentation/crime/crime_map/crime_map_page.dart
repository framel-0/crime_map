import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../../application/crime/crime_actor/crime_actor_bloc.dart';
import '../../../application/crime/crime_watcher/crime_watcher_bloc.dart';
import '../../../injection.dart';
import '../../routes/router.gr.dart';
import 'widgets/crime_map_body.dart';

class CrimeMapPage extends StatelessWidget {
  const CrimeMapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CrimeWatcherBloc>(
          create: (create) => getIt<CrimeWatcherBloc>()
            ..add(
              const CrimeWatcherEvent.watchAllCrimeStarted(),
            ),
        ),
        BlocProvider<CrimeActorBloc>(
            create: (create) => getIt<CrimeActorBloc>())
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (ctx, state) {
              state.maybeMap(
                  unauthenticated: (_) {
                    Fluttertoast.showToast(
                      msg: "SignOut Successful",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      backgroundColor: Colors.blueAccent,
                      textColor: Colors.white,
                      fontSize: 16.0,
                    );
                    AutoRouter.of(context).replace(const SignInRoute());
                  },
                  orElse: () {});
            },
          ),
          BlocListener<CrimeActorBloc, CrimeActorState>(
            listener: (context, state) {
              // TODO: implement listener
            },
          ),
        ],
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(
                Icons.exit_to_app,
                semanticLabel: 'Logout',
              ),
              onPressed: () {
                BlocProvider.of<AuthBloc>(context)
                    .add(const AuthEvent.signedOut());
              },
            ),
            title: const Text('Crime Map'),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              AutoRouter.of(context).push(CrimeFormRoute());
            },
            child: const Icon(Icons.add),
          ),
          body: const CrimeMapBody(),
        ),
      ),
    );
  }
}
