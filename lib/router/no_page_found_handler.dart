import 'package:admin_dashboard/ui/views/no_page_found_view.dart';
import 'package:fluro/fluro.dart';

class NoPageFoundHandler {
  static Handler noPageFound = Handler(handlerFunc: (context, parameters) => const NoPageFoundView());
}
