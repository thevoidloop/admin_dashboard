import 'package:admin_dashboard/router/no_page_found_handler.dart';
import 'package:fluro/fluro.dart';

import 'admin_handler.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static String rootRoute = '/';

  //Auth Router

  static String loginRoute = '/auth/login';
  static String registerRoute = '/auth/register';

  // Dashboard

  static String dashboardRoute = '/dashboard';

  static void configureRoutes() {
    router.define(rootRoute, handler: AdminHandlers.login);
    router.define(loginRoute, handler: AdminHandlers.login);
    // router.define(registerRoute, handler: handler);
    // router.define(dashboardRoute, handler: handler);

    //404
    router.notFoundHandler = NoPageFoundHandler.noPageFound;
  }
}
