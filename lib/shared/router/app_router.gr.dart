// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:hello_world/shared/models/server_model.dart' as _i7;
import 'package:hello_world/views/pages/currency/currency_page.dart' as _i1;
import 'package:hello_world/views/pages/home/home_page.dart' as _i2;
import 'package:hello_world/views/pages/prspy/prspy_page.dart' as _i3;
import 'package:hello_world/views/pages/prspy/server_details_page.dart' as _i4;

/// generated route for
/// [_i1.CurrencyPage]
class CurrencyRoute extends _i5.PageRouteInfo<CurrencyRouteArgs> {
  CurrencyRoute({
    required String data,
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          CurrencyRoute.name,
          args: CurrencyRouteArgs(data: data, key: key),
          rawPathParams: {'data': data},
          initialChildren: children,
        );

  static const String name = 'CurrencyRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<CurrencyRouteArgs>(
        orElse: () => CurrencyRouteArgs(data: pathParams.getString('data')),
      );
      return _i1.CurrencyPage(data: args.data, key: args.key);
    },
  );
}

class CurrencyRouteArgs {
  const CurrencyRouteArgs({required this.data, this.key});

  final String data;

  final _i6.Key? key;

  @override
  String toString() {
    return 'CurrencyRouteArgs{data: $data, key: $key}';
  }
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children}) : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomePage();
    },
  );
}

/// generated route for
/// [_i3.PrspyPage]
class PrspyRoute extends _i5.PageRouteInfo<PrspyRouteArgs> {
  PrspyRoute({
    required String data,
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          PrspyRoute.name,
          args: PrspyRouteArgs(data: data, key: key),
          rawPathParams: {'data': data},
          initialChildren: children,
        );

  static const String name = 'PrspyRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<PrspyRouteArgs>(
        orElse: () => PrspyRouteArgs(data: pathParams.getString('data')),
      );
      return _i3.PrspyPage(data: args.data, key: args.key);
    },
  );
}

class PrspyRouteArgs {
  const PrspyRouteArgs({required this.data, this.key});

  final String data;

  final _i6.Key? key;

  @override
  String toString() {
    return 'PrspyRouteArgs{data: $data, key: $key}';
  }
}

/// generated route for
/// [_i4.ServerDetailsPage]
class ServerDetailsRoute extends _i5.PageRouteInfo<ServerDetailsRouteArgs> {
  ServerDetailsRoute({
    required _i7.ServerModel server,
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          ServerDetailsRoute.name,
          args: ServerDetailsRouteArgs(server: server, key: key),
          initialChildren: children,
        );

  static const String name = 'ServerDetailsRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ServerDetailsRouteArgs>();
      return _i4.ServerDetailsPage(server: args.server, key: args.key);
    },
  );
}

class ServerDetailsRouteArgs {
  const ServerDetailsRouteArgs({required this.server, this.key});

  final _i7.ServerModel server;

  final _i6.Key? key;

  @override
  String toString() {
    return 'ServerDetailsRouteArgs{server: $server, key: $key}';
  }
}
