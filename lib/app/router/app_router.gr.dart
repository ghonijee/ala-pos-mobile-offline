// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:ala_pos/app/screens/splash_screen.dart' as _i1;
import 'package:ala_pos/features/category_product/screen/category_main_list_screen.dart' as _i9;
import 'package:ala_pos/features/category_product/screen/caterory_form_screen.dart' as _i10;
import 'package:ala_pos/features/manage_store/screen/store_form_profile_screen.dart' as _i7;
import 'package:ala_pos/features/manage_store/screen/store_profile_screen.dart' as _i8;
import 'package:ala_pos/features/onboarding/screen/store_register_screen.dart' as _i4;
import 'package:ala_pos/features/onboarding/screen/success_register_screen.dart' as _i5;
import 'package:ala_pos/features/pos/screen/pos_main_screen.dart' as _i3;
import 'package:ala_pos/features/product/screen/product_form_screen.dart' as _i12;
import 'package:ala_pos/features/product/screen/product_main_list_screen.dart' as _i11;
import 'package:ala_pos/features/transaction/screen/transaction_detail_screen.dart' as _i6;
import 'package:ala_pos/features/transaction/screen/transaction_main_screen.dart' as _i2;
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;

abstract class $AppRouter extends _i13.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    Splash.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
      );
    },
    TransactionMain.name: (routeData) {
      final args = routeData.argsAs<TransactionMainArgs>(orElse: () => const TransactionMainArgs());
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.TransactionMainScreen(key: args.key),
      );
    },
    PosMain.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.PosMainScreen(),
      );
    },
    StoreRegister.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.StoreRegisterScreen(),
      );
    },
    StoreRegisterSuccess.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SuccessRegisterScreen(),
      );
    },
    TransactionDetail.name: (routeData) {
      final args = routeData.argsAs<TransactionDetailArgs>(orElse: () => const TransactionDetailArgs());
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.TransactionDetailScreen(key: args.key),
      );
    },
    StoreFormProfile.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.StoreFormProfileScreen(),
      );
    },
    StoreProfile.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.StoreProfileScreen(),
      );
    },
    CategoryMainList.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.CategoryMainListScreen(),
      );
    },
    CategoryForm.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.CategoryFormScreen(),
      );
    },
    ProductMainList.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.ProductMainListScreen(),
      );
    },
    ProductForm.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.ProductFormScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.SplashScreen]
class Splash extends _i13.PageRouteInfo<void> {
  const Splash({List<_i13.PageRouteInfo>? children})
      : super(
          Splash.name,
          initialChildren: children,
        );

  static const String name = 'Splash';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i2.TransactionMainScreen]
class TransactionMain extends _i13.PageRouteInfo<TransactionMainArgs> {
  TransactionMain({
    _i14.Key? key,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          TransactionMain.name,
          args: TransactionMainArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'TransactionMain';

  static const _i13.PageInfo<TransactionMainArgs> page = _i13.PageInfo<TransactionMainArgs>(name);
}

class TransactionMainArgs {
  const TransactionMainArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'TransactionMainArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.PosMainScreen]
class PosMain extends _i13.PageRouteInfo<void> {
  const PosMain({List<_i13.PageRouteInfo>? children})
      : super(
          PosMain.name,
          initialChildren: children,
        );

  static const String name = 'PosMain';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i4.StoreRegisterScreen]
class StoreRegister extends _i13.PageRouteInfo<void> {
  const StoreRegister({List<_i13.PageRouteInfo>? children})
      : super(
          StoreRegister.name,
          initialChildren: children,
        );

  static const String name = 'StoreRegister';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SuccessRegisterScreen]
class StoreRegisterSuccess extends _i13.PageRouteInfo<void> {
  const StoreRegisterSuccess({List<_i13.PageRouteInfo>? children})
      : super(
          StoreRegisterSuccess.name,
          initialChildren: children,
        );

  static const String name = 'StoreRegisterSuccess';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i6.TransactionDetailScreen]
class TransactionDetail extends _i13.PageRouteInfo<TransactionDetailArgs> {
  TransactionDetail({
    _i14.Key? key,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          TransactionDetail.name,
          args: TransactionDetailArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'TransactionDetail';

  static const _i13.PageInfo<TransactionDetailArgs> page = _i13.PageInfo<TransactionDetailArgs>(name);
}

class TransactionDetailArgs {
  const TransactionDetailArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'TransactionDetailArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.StoreFormProfileScreen]
class StoreFormProfile extends _i13.PageRouteInfo<void> {
  const StoreFormProfile({List<_i13.PageRouteInfo>? children})
      : super(
          StoreFormProfile.name,
          initialChildren: children,
        );

  static const String name = 'StoreFormProfile';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i8.StoreProfileScreen]
class StoreProfile extends _i13.PageRouteInfo<void> {
  const StoreProfile({List<_i13.PageRouteInfo>? children})
      : super(
          StoreProfile.name,
          initialChildren: children,
        );

  static const String name = 'StoreProfile';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i9.CategoryMainListScreen]
class CategoryMainList extends _i13.PageRouteInfo<void> {
  const CategoryMainList({List<_i13.PageRouteInfo>? children})
      : super(
          CategoryMainList.name,
          initialChildren: children,
        );

  static const String name = 'CategoryMainList';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i10.CategoryFormScreen]
class CategoryForm extends _i13.PageRouteInfo<void> {
  const CategoryForm({List<_i13.PageRouteInfo>? children})
      : super(
          CategoryForm.name,
          initialChildren: children,
        );

  static const String name = 'CategoryForm';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i11.ProductMainListScreen]
class ProductMainList extends _i13.PageRouteInfo<void> {
  const ProductMainList({List<_i13.PageRouteInfo>? children})
      : super(
          ProductMainList.name,
          initialChildren: children,
        );

  static const String name = 'ProductMainList';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i12.ProductFormScreen]
class ProductForm extends _i13.PageRouteInfo<void> {
  const ProductForm({List<_i13.PageRouteInfo>? children})
      : super(
          ProductForm.name,
          initialChildren: children,
        );

  static const String name = 'ProductForm';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}
