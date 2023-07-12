import 'package:finalproject/core/model/datamodel.dart';
import 'package:finalproject/featuers/Home/Screen/Home.dart';
import 'package:finalproject/featuers/Home/Widget/DetailsItems.dart';
import 'package:finalproject/featuers/Home/Widget/TeamPage.dart';
import 'package:finalproject/featuers/Login_Page/Screens/Login/Login_Screen.dart';
import 'package:finalproject/featuers/Login_Page/Screens/Register_Page/RegisterScreen.dart';
import 'package:finalproject/featuers/Splash/presentation/views/Splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static String KHomeView = '/HomeView';
  static String KBookDetailsView = '/BookDetailsView';
  static String KSearchView = '/SearchView';
  static String KSplash = '/KSplash';
  static String KrouteRegister = '/routeRegister';
  static String KrouteLogin = '/routeLogin';
  static String KrouteRegister1 = '/routeRegister1';
  static String KDetailsItemsNews = '/DetailsItemsNews';
  static String KDetailsItemsPrograms = '/DetailsItemsPrograms';
  static String KTeamPage = '/TeamPage';

  static final GoRouter router = GoRouter(routes: <RouteBase>[
    GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        }),
    GoRoute(
        path: KrouteLogin,
        builder: (BuildContext context, GoRouterState state) {
          return LoginScreen();
        }),
    GoRoute(
        path: KrouteRegister1,
        builder: (BuildContext context, GoRouterState state) {
          return RegisterScreen1();
        }),
    GoRoute(
        path: KHomeView,
        builder: (BuildContext context, GoRouterState state) {
          return HomePage();
        }),
    GoRoute(
        path: KSplash,
        builder: (BuildContext context, GoRouterState state) {
          return LoginScreen();
        }),
    GoRoute(
        path: KDetailsItemsNews,
        builder: (BuildContext context, GoRouterState state) {
          return DetailsItemsNews(state.extra as News);
        }),
    GoRoute(
        path: KDetailsItemsPrograms,
        builder: (BuildContext context, GoRouterState state) {
          return DetailsItemsPrograms(state.extra as Programs);
        }),
    GoRoute(
        path: KTeamPage,
        builder: (BuildContext context, GoRouterState state) {
          return TeamPage();
        }),
  ]);
}
