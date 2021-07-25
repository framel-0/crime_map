import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/auth_bloc.dart';
import '../../injection.dart';
import '../routes/router.gr.dart';
import 'colors.dart';

class AppWidget extends StatelessWidget {
  final _appRouter = AppRouter();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // PushNotificationsManager().fcmSubscribe();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<AuthBloc>()
            ..add(
              const AuthEvent.authCheckRequested(),
            ),
        ),
      ],
      child: GestureDetector(
        onTap: () {
          final FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Crime Map',
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
          theme: _buildCrimeMapTheme(ctx: context),
        ),
      ),
    );
  }
}

ThemeData _buildCrimeMapTheme({required BuildContext ctx}) {
  final ThemeData base = ThemeData.light();

  return base.copyWith(
    // textTheme: GoogleFonts.latoTextTheme(
    //   Theme.of(ctx).textTheme,
    // ),
    accentColor: colorSecondary,
    primaryColor: colorPrimary,
    primaryColorLight: colorPrimaryLight,
    primaryColorDark: colorPrimaryDark,
    buttonTheme: base.buttonTheme.copyWith(
      buttonColor: colorPrimary,
      textTheme: ButtonTextTheme.normal,
    ),
    scaffoldBackgroundColor: Colors.white,
  );
}
