import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyProvider extends ChangeNotifier {
  Map<String, int> quantities = {};

  int getQuantity(String productId) {
    return quantities[productId] ?? 1;
  }

  void addQuantity(String productId, BuildContext context) {
    if (Provider.of<MyProvider>(context, listen: false)
        .quantities
        .containsKey(productId)) {
      Provider.of<MyProvider>(context, listen: false).quantities[productId] =
          Provider.of<MyProvider>(context, listen: false)
                  .quantities[productId]! +
              1;
    } else {
      Provider.of<MyProvider>(context, listen: false).quantities[productId] = 2;
    }
    notifyListeners();
  }

  void subtractQuantity(String productId, BuildContext context) {
    if (Provider.of<MyProvider>(context, listen: false)
            .quantities
            .containsKey(productId) &&
        Provider.of<MyProvider>(context, listen: false).quantities[productId]! >
            1) {
      Provider.of<MyProvider>(context, listen: false).quantities[productId] =
          Provider.of<MyProvider>(context, listen: false)
                  .quantities[productId]! -
              1;
      notifyListeners();
    }
  }
}
