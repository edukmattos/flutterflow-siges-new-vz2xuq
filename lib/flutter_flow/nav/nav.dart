import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';

import '/auth/base_auth_user_provider.dart';

import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) => RootPageContext.wrap(
        appStateNotifier.loggedIn ? PgDBUsersOWidget() : PgSigninWidget(),
        errorRoute: state.uri.toString(),
      ),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => RootPageContext.wrap(
            appStateNotifier.loggedIn ? PgDBUsersOWidget() : PgSigninWidget(),
          ),
          routes: [
            FFRoute(
              name: PgSigninWidget.routeName,
              path: PgSigninWidget.routePath,
              builder: (context, params) => PgSigninWidget(),
            ),
            FFRoute(
              name: PgSignupEmailWidget.routeName,
              path: PgSignupEmailWidget.routePath,
              builder: (context, params) => PgSignupEmailWidget(),
            ),
            FFRoute(
              name: PgDBUsersOWidget.routeName,
              path: PgDBUsersOWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgDBUsersOWidget(),
            ),
            FFRoute(
              name: PgMyProfileWidget.routeName,
              path: PgMyProfileWidget.routePath,
              builder: (context, params) => PgMyProfileWidget(),
            ),
            FFRoute(
              name: PgNotAllowedWidget.routeName,
              path: PgNotAllowedWidget.routePath,
              builder: (context, params) => PgNotAllowedWidget(),
            ),
            FFRoute(
              name: PgUnitShowWidget.routeName,
              path: PgUnitShowWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgUnitShowWidget(),
            ),
            FFRoute(
              name: PgUnitCreateOriWidget.routeName,
              path: PgUnitCreateOriWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgUnitCreateOriWidget(),
            ),
            FFRoute(
              name: PgUnitUpdateLocationWidget.routeName,
              path: PgUnitUpdateLocationWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgUnitUpdateLocationWidget(),
            ),
            FFRoute(
              name: PgUnitUpdateDataWidget.routeName,
              path: PgUnitUpdateDataWidget.routePath,
              builder: (context, params) => PgUnitUpdateDataWidget(),
            ),
            FFRoute(
              name: PgAssetsSearchWidget.routeName,
              path: PgAssetsSearchWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgAssetsSearchWidget(),
            ),
            FFRoute(
              name: PgAssetShowWidget.routeName,
              path: PgAssetShowWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgAssetShowWidget(),
            ),
            FFRoute(
              name: PgAssetCUStep01Widget.routeName,
              path: PgAssetCUStep01Widget.routePath,
              requireAuth: true,
              builder: (context, params) => PgAssetCUStep01Widget(
                cpOperation: params.getParam(
                  'cpOperation',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: PgAssetCUStep02Widget.routeName,
              path: PgAssetCUStep02Widget.routePath,
              requireAuth: true,
              builder: (context, params) => PgAssetCUStep02Widget(
                ppOperation: params.getParam(
                  'ppOperation',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: PgAssetCUStep031Widget.routeName,
              path: PgAssetCUStep031Widget.routePath,
              requireAuth: true,
              builder: (context, params) => PgAssetCUStep031Widget(
                ppOperation: params.getParam(
                  'ppOperation',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: PgAssetCUStep0328200Widget.routeName,
              path: PgAssetCUStep0328200Widget.routePath,
              requireAuth: true,
              builder: (context, params) => PgAssetCUStep0328200Widget(
                ppOperation: params.getParam(
                  'ppOperation',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: PgOPCreateWidget.routeName,
              path: PgOPCreateWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgOPCreateWidget(),
            ),
            FFRoute(
              name: PgOPShowWidget.routeName,
              path: PgOPShowWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgOPShowWidget(
                ppOPMenuOptions: params.getParam(
                  'ppOPMenuOptions',
                  ParamType.bool,
                ),
              ),
            ),
            FFRoute(
              name: PgOPProgrammingWidget.routeName,
              path: PgOPProgrammingWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgOPProgrammingWidget(
                ppOPMenuOptions: params.getParam(
                  'ppOPMenuOptions',
                  ParamType.bool,
                ),
              ),
            ),
            FFRoute(
              name: PgOCreateWidget.routeName,
              path: PgOCreateWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgOCreateWidget(
                ppOPMenuOptions: params.getParam(
                  'ppOPMenuOptions',
                  ParamType.bool,
                ),
              ),
            ),
            FFRoute(
              name: PgDBAdminOWidget.routeName,
              path: PgDBAdminOWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgDBAdminOWidget(),
            ),
            FFRoute(
              name: PgOShowWidget.routeName,
              path: PgOShowWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgOShowWidget(
                ppIsRedirect: params.getParam(
                  'ppIsRedirect',
                  ParamType.bool,
                ),
              ),
            ),
            FFRoute(
              name: Dashboard5Widget.routeName,
              path: Dashboard5Widget.routePath,
              builder: (context, params) => Dashboard5Widget(),
            ),
            FFRoute(
              name: Details03TransactionsSummaryWidget.routeName,
              path: Details03TransactionsSummaryWidget.routePath,
              builder: (context, params) =>
                  Details03TransactionsSummaryWidget(),
            ),
            FFRoute(
              name: PgOVShowWidget.routeName,
              path: PgOVShowWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgOVShowWidget(),
            ),
            FFRoute(
              name: PgMyTeamWidget.routeName,
              path: PgMyTeamWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgMyTeamWidget(),
            ),
            FFRoute(
              name: PgSettingsWidget.routeName,
              path: PgSettingsWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgSettingsWidget(),
            ),
            FFRoute(
              name: PgSettingsUsersWidget.routeName,
              path: PgSettingsUsersWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgSettingsUsersWidget(),
            ),
            FFRoute(
              name: PgSettingsCompaniesWidget.routeName,
              path: PgSettingsCompaniesWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgSettingsCompaniesWidget(),
            ),
            FFRoute(
              name: PgSettingsCompanyWidget.routeName,
              path: PgSettingsCompanyWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgSettingsCompanyWidget(),
            ),
            FFRoute(
              name: PgSettingsCompanyContractAccessesWidget.routeName,
              path: PgSettingsCompanyContractAccessesWidget.routePath,
              requireAuth: true,
              builder: (context, params) =>
                  PgSettingsCompanyContractAccessesWidget(),
            ),
            FFRoute(
              name: PgSettingsUserEditWidget.routeName,
              path: PgSettingsUserEditWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgSettingsUserEditWidget(),
            ),
            FFRoute(
              name: PgSettingsCompanyContractsWidget.routeName,
              path: PgSettingsCompanyContractsWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgSettingsCompanyContractsWidget(),
            ),
            FFRoute(
              name: PgMyProfileVehiclesListWidget.routeName,
              path: PgMyProfileVehiclesListWidget.routePath,
              builder: (context, params) => PgMyProfileVehiclesListWidget(),
            ),
            FFRoute(
              name: PgOVAsset1SearchWidget.routeName,
              path: PgOVAsset1SearchWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgOVAsset1SearchWidget(),
            ),
            FFRoute(
              name: PgOVAsset2BeforeWidget.routeName,
              path: PgOVAsset2BeforeWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgOVAsset2BeforeWidget(
                ppOperation: params.getParam(
                  'ppOperation',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: PgOVAsset3ActivitesSearchWidget.routeName,
              path: PgOVAsset3ActivitesSearchWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgOVAsset3ActivitesSearchWidget(),
            ),
            FFRoute(
              name: PgOVAsset5MovingWidget.routeName,
              path: PgOVAsset5MovingWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgOVAsset5MovingWidget(),
            ),
            FFRoute(
              name: PgUnitCreateWidget.routeName,
              path: PgUnitCreateWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgUnitCreateWidget(),
            ),
            FFRoute(
              name: PgOPShowCopyWidget.routeName,
              path: PgOPShowCopyWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgOPShowCopyWidget(
                ppOPMenuOptions: params.getParam(
                  'ppOPMenuOptions',
                  ParamType.bool,
                ),
              ),
            ),
            FFRoute(
              name: PgUnitsSearchCopyWidget.routeName,
              path: PgUnitsSearchCopyWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgUnitsSearchCopyWidget(),
            ),
            FFRoute(
              name: PgUnitsSearchWidget.routeName,
              path: PgUnitsSearchWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgUnitsSearchWidget(),
            ),
            FFRoute(
              name: PgMaterialsSearchCopyWidget.routeName,
              path: PgMaterialsSearchCopyWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgMaterialsSearchCopyWidget(),
            ),
            FFRoute(
              name: PgMaterialsSearchWidget.routeName,
              path: PgMaterialsSearchWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgMaterialsSearchWidget(),
            ),
            FFRoute(
              name: PgCartShowWidget.routeName,
              path: PgCartShowWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgCartShowWidget(),
            ),
            FFRoute(
              name: PgDBAdminOVWidget.routeName,
              path: PgDBAdminOVWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgDBAdminOVWidget(),
            ),
            FFRoute(
              name: PgDBUserOVWidget.routeName,
              path: PgDBUserOVWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgDBUserOVWidget(),
            ),
            FFRoute(
              name: PgOVAsset4MaterialsSearchWidget.routeName,
              path: PgOVAsset4MaterialsSearchWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgOVAsset4MaterialsSearchWidget(),
            ),
            FFRoute(
              name: Home22DashboardResponsiveWidget.routeName,
              path: Home22DashboardResponsiveWidget.routePath,
              builder: (context, params) => Home22DashboardResponsiveWidget(),
            ),
            FFRoute(
              name: PgAssetCUStep032Widget.routeName,
              path: PgAssetCUStep032Widget.routePath,
              requireAuth: true,
              builder: (context, params) => PgAssetCUStep032Widget(
                ppOperation: params.getParam(
                  'ppOperation',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: PgAssetCUStep031213141529Widget.routeName,
              path: PgAssetCUStep031213141529Widget.routePath,
              requireAuth: true,
              builder: (context, params) => PgAssetCUStep031213141529Widget(
                ppOperation: params.getParam(
                  'ppOperation',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: PgAssetCUStep04ImageWidget.routeName,
              path: PgAssetCUStep04ImageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgAssetCUStep04ImageWidget(
                ppOperation: params.getParam(
                  'ppOperation',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: PgAssetCUStep0319Widget.routeName,
              path: PgAssetCUStep0319Widget.routePath,
              requireAuth: true,
              builder: (context, params) => PgAssetCUStep0319Widget(
                ppOperation: params.getParam(
                  'ppOperation',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: PgTMSearchWidget.routeName,
              path: PgTMSearchWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgTMSearchWidget(),
            ),
            FFRoute(
              name: PgTMShowWidget.routeName,
              path: PgTMShowWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgTMShowWidget(),
            ),
            FFRoute(
              name: PgAppVersionNewReleaseWidget.routeName,
              path: PgAppVersionNewReleaseWidget.routePath,
              builder: (context, params) => PgAppVersionNewReleaseWidget(),
            ),
            FFRoute(
              name: PgSettingsOTypesActivitiesWidget.routeName,
              path: PgSettingsOTypesActivitiesWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgSettingsOTypesActivitiesWidget(),
            ),
            FFRoute(
              name: PgSettingsCompanyContractDetailsWidget.routeName,
              path: PgSettingsCompanyContractDetailsWidget.routePath,
              requireAuth: true,
              builder: (context, params) =>
                  PgSettingsCompanyContractDetailsWidget(),
            ),
            FFRoute(
              name: PgSettingsCompanyContractServicesSearchWidget.routeName,
              path: PgSettingsCompanyContractServicesSearchWidget.routePath,
              requireAuth: true,
              builder: (context, params) =>
                  PgSettingsCompanyContractServicesSearchWidget(),
            ),
            FFRoute(
              name: PgCalendarWidget.routeName,
              path: PgCalendarWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgCalendarWidget(),
            ),
            FFRoute(
              name: PgDBAdminFinancialWidget.routeName,
              path: PgDBAdminFinancialWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgDBAdminFinancialWidget(),
            ),
            FFRoute(
              name: Home17CalendarWidget.routeName,
              path: Home17CalendarWidget.routePath,
              builder: (context, params) => Home17CalendarWidget(),
            ),
            FFRoute(
              name: PgDBTeamOWidget.routeName,
              path: PgDBTeamOWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgDBTeamOWidget(),
            ),
            FFRoute(
              name: PgSettingsServicesWidget.routeName,
              path: PgSettingsServicesWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgSettingsServicesWidget(),
            ),
            FFRoute(
              name: PgPasswordRecoveryWidget.routeName,
              path: PgPasswordRecoveryWidget.routePath,
              builder: (context, params) => PgPasswordRecoveryWidget(),
            ),
            FFRoute(
              name: PgPasswordUpdateWidget.routeName,
              path: PgPasswordUpdateWidget.routePath,
              builder: (context, params) => PgPasswordUpdateWidget(),
            ),
            FFRoute(
              name: PgImportDataWidget.routeName,
              path: PgImportDataWidget.routePath,
              builder: (context, params) => PgImportDataWidget(),
            ),
            FFRoute(
              name: PgUserMigrationWidget.routeName,
              path: PgUserMigrationWidget.routePath,
              builder: (context, params) => PgUserMigrationWidget(),
            ),
            FFRoute(
              name: PgDbUserOveWidget.routeName,
              path: PgDbUserOveWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgDbUserOveWidget(),
            ),
            FFRoute(
              name: PpppWidget.routeName,
              path: PpppWidget.routePath,
              builder: (context, params) => PpppWidget(),
            ),
            FFRoute(
              name: PgOCreateCopyWidget.routeName,
              path: PgOCreateCopyWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgOCreateCopyWidget(
                ppOPMenuOptions: params.getParam(
                  'ppOPMenuOptions',
                  ParamType.bool,
                ),
              ),
            ),
            FFRoute(
              name: PgOVETestWidget.routeName,
              path: PgOVETestWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgOVETestWidget(
                cpDtOVE: params.getParam(
                  'cpDtOVE',
                  ParamType.DataStruct,
                  isList: false,
                  structBuilder: DtOrderVisitExtraStruct.fromSerializableMap,
                ),
              ),
            ),
            FFRoute(
              name: PgDbAdminONewWidget.routeName,
              path: PgDbAdminONewWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgDbAdminONewWidget(),
            ),
            FFRoute(
              name: PgOveShowWidget.routeName,
              path: PgOveShowWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgOveShowWidget(),
            ),
            FFRoute(
              name: PgOVEShowCopyWidget.routeName,
              path: PgOVEShowCopyWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgOVEShowCopyWidget(),
            ),
            FFRoute(
              name: PgDbAdminOveWidget.routeName,
              path: PgDbAdminOveWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgDbAdminOveWidget(),
            ),
            FFRoute(
              name: PgDbAdminONewOriginalWidget.routeName,
              path: PgDbAdminONewOriginalWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PgDbAdminONewOriginalWidget(),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/pgSignin';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/siges_logo_ai_07-removebg-preview.png',
                    fit: BoxFit.contain,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
