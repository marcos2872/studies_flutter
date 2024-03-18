import 'package:routefly/routefly.dart';

import 'app/logon/logon_page.dart' as a0;
import 'app/search/[search]_page.dart' as a1;
import 'app/profile/profile_page.dart' as a2;
import 'app/view/[id]_page.dart' as a3;
import 'app/[index]_page.dart' as a4;
import 'app/login/login_page.dart' as a5;
import 'app/home/home_page.dart' as a6;
import 'app/message/messages_page.dart' as a7;

List<RouteEntity> get routes => [
      RouteEntity(
        key: '/logon',
        uri: Uri.parse('/logon'),
        routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
          ctx,
          settings,
          const a0.Logon(),
        ),
      ),
      RouteEntity(
        key: '/search/[search]',
        uri: Uri.parse('/search/[search]'),
        routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
          ctx,
          settings,
          const a1.Search(),
        ),
      ),
      RouteEntity(
        key: '/profile',
        uri: Uri.parse('/profile'),
        routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
          ctx,
          settings,
          const a2.Profile(),
        ),
      ),
      RouteEntity(
        key: '/view/[id]',
        uri: Uri.parse('/view/[id]'),
        routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
          ctx,
          settings,
          const a3.View(),
        ),
      ),
      RouteEntity(
        key: '/[index]/[search]',
        uri: Uri.parse('/[index]/[search]'),
        routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
          ctx,
          settings,
          const a4.AppPage(),
        ),
      ),
      RouteEntity(
        key: '/login',
        uri: Uri.parse('/login'),
        routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
          ctx,
          settings,
          const a5.Login(),
        ),
      ),
      RouteEntity(
        key: '/home',
        uri: Uri.parse('/home'),
        routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
          ctx,
          settings,
          const a6.Home(),
        ),
      ),
      RouteEntity(
        key: '/message',
        uri: Uri.parse('/message'),
        routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
          ctx,
          settings,
          const a7.Message(),
        ),
      ),
    ];

const routePaths = (
  path: (
    path:'/',
    $index: '/[index]/[search]',
    ),
  logon: '/logon',
  search: (
    path: '/search',
    $search: '/search/[search]'
  ),
  profile: '/profile',
  view: (
    path: '/view',
    $id: '/view/[id]',
  ),
  login: '/login',
  home: '/home',
  message: '/message',
);
