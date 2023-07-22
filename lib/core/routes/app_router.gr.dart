// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:flutter_clean_test/feature/detail_screen/ui/detail_screen.dart'
    as _i1;
import 'package:flutter_clean_test/feature/home/data/dto/employee.dart' as _i5;
import 'package:flutter_clean_test/feature/home/ui/home.dart' as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    DetailRoute.name: (routeData) {
      final args = routeData.argsAs<DetailRouteArgs>();
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.DetailScreen(
          key: args.key,
          employee: args.employee,
        ),
      );
    },
    Home.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.Home(),
      );
    },
  };
}

/// generated route for
/// [_i1.DetailScreen]
class DetailRoute extends _i3.PageRouteInfo<DetailRouteArgs> {
  DetailRoute({
    _i4.Key? key,
    required _i5.Employee employee,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          DetailRoute.name,
          args: DetailRouteArgs(
            key: key,
            employee: employee,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailRoute';

  static const _i3.PageInfo<DetailRouteArgs> page =
      _i3.PageInfo<DetailRouteArgs>(name);
}

class DetailRouteArgs {
  const DetailRouteArgs({
    this.key,
    required this.employee,
  });

  final _i4.Key? key;

  final _i5.Employee employee;

  @override
  String toString() {
    return 'DetailRouteArgs{key: $key, employee: $employee}';
  }
}

/// generated route for
/// [_i2.Home]
class Home extends _i3.PageRouteInfo<void> {
  const Home({List<_i3.PageRouteInfo>? children})
      : super(
          Home.name,
          initialChildren: children,
        );

  static const String name = 'Home';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
