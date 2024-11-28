import 'package:fluro/fluro.dart';
import 'routes_handler.dart';

class Routes {
  static void configureRoutes(FluroRouter router) {
    router.define("/", handler: indexHandler);
    router.define("/course_detail", handler: courseDetailHandler);
    router.notFoundHandler = notfoundHandler;
  }
}
