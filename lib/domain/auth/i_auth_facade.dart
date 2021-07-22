import 'package:dartz/dartz.dart';

import 'app_user.dart';
import 'auth_failure.dart';

abstract class IAuthFacade {
  Future<Option<AppUser>> getSignedInUser();

  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future get signOut;
}
