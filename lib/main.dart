import 'package:flutter/material.dart';

import 'config.dart';
import 'e-commerce_app.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
void main() {
  configureDependencies();
  runApp(const ECommerceApp());
}
