import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: Splash.page, initial: true),
        AutoRoute(page: StoreRegister.page),
        AutoRoute(page: StoreRegisterSuccess.page),
        AutoRoute(page: PosMain.page),
        AutoRoute(page: TransactionMain.page),
        AutoRoute(page: TransactionDetail.page),
        AutoRoute(page: StoreProfile.page),
        AutoRoute(page: StoreFormProfile.page),
        AutoRoute(page: CategoryMainList.page),
        AutoRoute(page: CategoryForm.page),
        AutoRoute(page: ProductMainList.page),
        AutoRoute(page: ProductForm.page)
        // AutoRoute(page: Tr)

        /// routes go here
      ];
}
