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
import 'package:hello_world/views/pages/currency/currency_page.dart' as _i1;
import 'package:hello_world/views/pages/home/home_page.dart' as _i2;
import 'package:hello_world/views/pages/prspy/prspy_page.dart' as _i3;

/// generated route for
/// [_i1.CurrencyPage]
class CurrencyRoute extends _i4.PageRouteInfo<CurrencyRouteArgs> {
  CurrencyRoute({
    _i5.Key? key,
    required String data,
    List<_i4.PageRouteInfo>? children,
  }) : super(
         CurrencyRoute.name,
         args: CurrencyRouteArgs(key: key, data: data),
         rawPathParams: {'data': data},
         initialChildren: children,
       );

  static const String name = 'CurrencyRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<CurrencyRouteArgs>(
        orElse: () => CurrencyRouteArgs(data: pathParams.getString('data')),
      );
      return _i1.CurrencyPage(key: args.key, data: args.data);
    },
  );
}

class CurrencyRouteArgs {
  const CurrencyRouteArgs({this.key, required this.data});

  final _i5.Key? key;

  final String data;

  @override
  String toString() {
    return 'CurrencyRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomePage();
    },
  );
}

/// generated route for
/// [_i3.PrspyPage]
class PrspyRoute extends _i4.PageRouteInfo<PrspyRouteArgs> {
  PrspyRoute({
    _i5.Key? key,
    required String data,
    List<_i4.PageRouteInfo>? children,
  }) : super(
         PrspyRoute.name,
         args: PrspyRouteArgs(key: key, data: data),
         rawPathParams: {'data': data},
         initialChildren: children,
       );

  static const String name = 'PrspyRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<PrspyRouteArgs>(
        orElse: () => PrspyRouteArgs(data: pathParams.getString('data')),
      );
      return _i3.PrspyPage(key: args.key, data: args.data);
    },
  );
}

class PrspyRouteArgs {
  const PrspyRouteArgs({this.key, required this.data});

  final _i5.Key? key;

  final String data;

  @override
  String toString() {
    return 'PrspyRouteArgs{key: $key, data: $data}';
  }
}
