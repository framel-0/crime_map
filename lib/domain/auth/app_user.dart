import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/value_objects.dart';

part 'app_user.freezed.dart';

@freezed
abstract class AppUser implements _$AppUser {
  const factory AppUser({
    required UniqueId id,
    String? name,
    String? email,
  }) = _AppUser;

  const AppUser._();
}
