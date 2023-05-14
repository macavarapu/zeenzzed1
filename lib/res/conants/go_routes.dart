import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zenzzed1/res/conants/routes_constants.dart';
import 'package:zenzzed1/res/prifile_screen_widget/my_service_request_screen.dart';
import 'package:zenzzed1/res/prifile_screen_widget/my_service_request_screen.dart';
import '../../view/change_password_screen/change_password_screen.dart';
import '../../view/change_password_screen/change_password_screen.dart';
import '../../view/change_password_screen/change_password_screen.dart';
import '../../view/computer_screen/computer_repair.dart';
import '../../view/edit_profile_screen/edit_profile.dart';
import '../../view/flash_screen/flash_screen.dart';
import '../../view/handyman_screen/handyman_screen.dart';
import '../../view/home_screen/home_screen.dart';
import '../../view/login_screen/login_screen.dart';
import '../../view/profile_screen/profile_screen.dart';
import '../../view/refer_screen/refer_to.dart';
import '../../view/request_screen/request_service.dart';
import '../../view/sign_up_screen/sign_up_screen.dart';
import '../../view/verify_screen/verify_screen.dart';
import '../prifile_screen_widget/my_service_request_screen.dart';
import '../prifile_screen_widget/my_service_request_screen.dart';
import '../prifile_screen_widget/my_service_request_screen.dart';
import '../prifile_screen_widget/my_service_request_screen.dart';
import '../prifile_screen_widget/my_service_request_screen.dart';
import '../prifile_screen_widget/my_service_request_screen.dart';

final GoRouter routes = GoRouter(
  initialLocation: RoutesList. flashscreen,     ///signupscreen, ///signupscreen,signupscreen,loginpage,  ///flashscreen,
  routes: <RouteBase>[
    GoRoute(
      path: RoutesList.flashscreen,
      builder: (BuildContext context, GoRouterState state) {
        return  FlashScreen ();
      },
    ),
    GoRoute(
      path: RoutesList.loginpage,
      builder: (BuildContext context, GoRouterState state) {
        return  LoginPage ();
      },
    ),
    GoRoute(
      path: RoutesList.signupscreen,
      builder: (BuildContext context, GoRouterState state) {
        return SignupScreen();
      },
    ),
    GoRoute(
      path: RoutesList.verifyScreen,
builder: (BuildContext context, GoRouterState state) {
        return VerifyScreen();
      },
    ),
    GoRoute(
      path: RoutesList.homeScreen,
      builder: (BuildContext context, GoRouterState state) {
        return HomeScreen();
      },
    ),
    GoRoute(
      path: RoutesList.profilescreen ,
      builder: (BuildContext context, GoRouterState state) {
        return Profilescreen ();
      },
    ),
    GoRoute(
      path: RoutesList.editprofilescreen ,
      builder: (BuildContext context, GoRouterState state) {
        return Editprofilescreen ();
      },
    ),
    GoRoute(
      path: RoutesList. requestService  ,
      builder: (BuildContext context, GoRouterState state) {
        return  RequestService ();
      },
    ),
    GoRoute(
      path: RoutesList. referTo  ,
      builder: (BuildContext context, GoRouterState state) {
        return  ReferTo  ();
      },
    ),
    GoRoute(
      path: RoutesList. computerrepair ,
      builder: (BuildContext context, GoRouterState state) {
        return  Computerrepair  ();
      },
    ),
    GoRoute(
      path: RoutesList. handymanScreen  ,
      builder: (BuildContext context, GoRouterState state) {
        return  HandymanScreen ();
      },
    ),
    GoRoute(
      path: RoutesList. changepasswordscreen  ,
      builder: (BuildContext context, GoRouterState state) {
        return  Changepasswordscreen  ();
      },
    ),
    // GoRoute(
    //   path: RoutesList. referTo  ,
    //   builder: (BuildContext context, GoRouterState state) {
    //     return  ReferTo  ();
    //   },
    // ),

  ],
);