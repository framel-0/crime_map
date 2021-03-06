import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../routes/router.gr.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (f) {
              Fluttertoast.showToast(
                msg: f.map(
                  canceledByUser: (_) => 'Canceled by User',
                  serverError: (_) => 'Server Error',
                ),
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0,
              );
              // FlushbarHelper.createError(
              //   message: f.map(
              //       canceledByUser: (_) => '',
              //       serverError: (_) => 'Server Error',
              // ).show(context);
            },
            (_) {
              Fluttertoast.showToast(
                msg: "SignIn Successful",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                backgroundColor: Colors.greenAccent,
                textColor: Colors.white,
                fontSize: 16.0,
              );
              context.router.replace(const CrimeMapRoute());
              context
                  .read<AuthBloc>()
                  .add(const AuthEvent.authCheckRequested());
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 18.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 180,
                    width: 200,
                    child: Image.asset('assets/images/crime_map.png'),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  SignInButton(
                    Buttons.Google,
                    onPressed: state.isSubmitting
                        ? () {}
                        : () {
                            context.read<SignInFormBloc>().add(
                                  const SignInFormEvent
                                      .signInWithGooglePressed(),
                                );
                          },
                  ),
                  _formSpace(),
                  if (state.isSubmitting) ...[
                    const SizedBox(
                      height: 8,
                    ),
                    const CircularProgressIndicator()
                  ]
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
