// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:hello_world/screens/details_screen.dart' as _i1;
import 'package:hello_world/screens/home_screen.dart' as _i2;
import 'package:hello_world/screens/prspy_screen.dart' as _i3;

/// generated route for
/// [_i1.DetailsScreen]
class DetailsRoute extends _i4.PageRouteInfo<DetailsRouteArgs> {
  DetailsRoute({
    _i5.Key? key,
    required String data,
    List<_i4.PageRouteInfo>? children,
  }) : super(
         DetailsRoute.name,
         args: DetailsRouteArgs(key: key, data: data),
         rawPathParams: {'data': data},
         initialChildren: children,
       );

  static const String name = 'DetailsRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<DetailsRouteArgs>(
        orElse: () => DetailsRouteArgs(data: pathParams.getString('data')),
      );
      return _i1.DetailsScreen(key: args.key, data: args.data);
    },
  );
}

class DetailsRouteArgs {
  const DetailsRouteArgs({this.key, required this.data});

  final _i5.Key? key;

  final String data;

  @override
  String toString() {
    return 'DetailsRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomeScreen();
    },
  );
}

/// generated route for
/// [_i3.PrspyScreen]
class PrspyRoute extends _i4.PageRouteInfo<void> {
  const PrspyRoute({List<_i4.PageRouteInfo>? children})
    : super(PrspyRoute.name, initialChildren: children);

  static const String name = 'PrspyRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.PrspyScreen();
    },
  );
}
