// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/foundation.dart' as _i10;
import 'package:flutter/material.dart' as _i2;

import '../../domain/crime/crime.dart' as _i11;
import '../crime/crime_detail/crime_detail_page.dart' as _i7;
import '../crime/crime_form/crime_form_page.dart' as _i6;
import '../crime/crime_form/get_location_map.dart' as _i8;
import '../crime/crime_form/widgets/image_picker_widget.dart' as _i9;
import '../crime/crime_map/crime_map_page.dart' as _i5;
import '../sign_in/sign_in_page.dart' as _i4;
import '../splash/splash_page.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.SplashPage();
        }),
    SignInRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.SignInPage();
        }),
    CrimeMapRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.CrimeMapPage();
        }),
    CrimeFormRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CrimeFormRouteArgs>(
              orElse: () => const CrimeFormRouteArgs());
          return _i6.CrimeFormPage(
              key: args.key, editedCrime: args.editedCrime);
        },
        fullscreenDialog: true),
    CrimeDetailRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CrimeDetailRouteArgs>();
          return _i7.CrimeDetailPage(key: args.key, crime: args.crime);
        },
        fullscreenDialog: true),
    GetLocationMap.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i8.GetLocationMap();
        }),
    ImagePickerRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ImagePickerRouteArgs>(
              orElse: () => const ImagePickerRouteArgs());
          return _i9.ImagePickerPage(key: args.key, title: args.title);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashRoute.name, path: '/'),
        _i1.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i1.RouteConfig(CrimeMapRoute.name, path: '/crime-map-page'),
        _i1.RouteConfig(CrimeFormRoute.name, path: '/crime-form-page'),
        _i1.RouteConfig(CrimeDetailRoute.name, path: '/crime-detail-page'),
        _i1.RouteConfig(GetLocationMap.name, path: '/get-location-map'),
        _i1.RouteConfig(ImagePickerRoute.name, path: '/image-picker-page')
      ];
}

class SplashRoute extends _i1.PageRouteInfo {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

class SignInRoute extends _i1.PageRouteInfo {
  const SignInRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

class CrimeMapRoute extends _i1.PageRouteInfo {
  const CrimeMapRoute() : super(name, path: '/crime-map-page');

  static const String name = 'CrimeMapRoute';
}

class CrimeFormRoute extends _i1.PageRouteInfo<CrimeFormRouteArgs> {
  CrimeFormRoute({_i10.Key? key, _i11.Crime? editedCrime})
      : super(name,
            path: '/crime-form-page',
            args: CrimeFormRouteArgs(key: key, editedCrime: editedCrime));

  static const String name = 'CrimeFormRoute';
}

class CrimeFormRouteArgs {
  const CrimeFormRouteArgs({this.key, this.editedCrime});

  final _i10.Key? key;

  final _i11.Crime? editedCrime;
}

class CrimeDetailRoute extends _i1.PageRouteInfo<CrimeDetailRouteArgs> {
  CrimeDetailRoute({_i10.Key? key, required _i11.Crime crime})
      : super(name,
            path: '/crime-detail-page',
            args: CrimeDetailRouteArgs(key: key, crime: crime));

  static const String name = 'CrimeDetailRoute';
}

class CrimeDetailRouteArgs {
  const CrimeDetailRouteArgs({this.key, required this.crime});

  final _i10.Key? key;

  final _i11.Crime crime;
}

class GetLocationMap extends _i1.PageRouteInfo {
  const GetLocationMap() : super(name, path: '/get-location-map');

  static const String name = 'GetLocationMap';
}

class ImagePickerRoute extends _i1.PageRouteInfo<ImagePickerRouteArgs> {
  ImagePickerRoute({_i10.Key? key, String? title})
      : super(name,
            path: '/image-picker-page',
            args: ImagePickerRouteArgs(key: key, title: title));

  static const String name = 'ImagePickerRoute';
}

class ImagePickerRouteArgs {
  const ImagePickerRouteArgs({this.key, this.title});

  final _i10.Key? key;

  final String? title;
}
