import 'package:e_commerce_app/core/caches/shared_preference.dart';
import 'package:flutter/material.dart';

import 'config.dart';
import 'e-commerce_app.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper.init();
  configureDependencies();
  runApp(const ECommerceApp());
}
