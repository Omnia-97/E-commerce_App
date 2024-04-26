import 'package:e_commerce_app/config/routes/pages_route_name.dart';
import 'package:e_commerce_app/features/cart/presentation/pages/cart_page.dart';
import 'package:e_commerce_app/features/product_details/presentation/pages/product_details_page.dart';
import 'package:e_commerce_app/features/products/presentation/pages/products_page.dart';
import 'package:e_commerce_app/features/sign_in/presentation/pages/sign_in.dart';
import 'package:e_commerce_app/features/sign_up/presentation/pages/sign_up.dart';
import 'package:e_commerce_app/layout_screen.dart';
import 'package:flutter/material.dart';
import '../../features/home/presentation/pages/home.dart';
import '../../features/splash/splash_page.dart';

class AppRoutes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case PagesRouteName.splash:
        return MaterialPageRoute(
          builder: (context) => const SplashPage(),
          settings: settings,
        );
      case PagesRouteName.signIn:
        return MaterialPageRoute(
          builder: (context) => const SignInPage(),
          settings: settings,
        );
      case PagesRouteName.signUp:
        return MaterialPageRoute(
          builder: (context) => const SignUpPage(),
          settings: settings,
        );
      case PagesRouteName.home:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
          settings: settings,
        );
      case PagesRouteName.layout:
        return MaterialPageRoute(
          builder: (context) => const LayoutScreen(),
          settings: settings,
        );

      case PagesRouteName.products:
        return MaterialPageRoute(
          builder: (context) => const ProductsPage(),
          settings: settings,
        );
      case PagesRouteName.productDetails:
        return MaterialPageRoute(
          builder: (context) => ProductDetailsPage(),
          settings: settings,
        );
      case PagesRouteName.cartPage:
        return MaterialPageRoute(
          builder: (context) => const CartPage(),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
