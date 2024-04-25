import 'package:e_commerce_app/config.dart';
import 'package:e_commerce_app/features/products/presentation/widgets/product_item_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../bloc/products_bloc.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<ProductsBloc>()..add(const GetAllProductsEvent()),
      child: BlocBuilder<ProductsBloc, ProductsState>(
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 24.h),
            child: Column(
              children: [
                Expanded(
                  child: GridView.builder(
                    itemCount: state.allProductsModel?.data?.length ?? 0,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: (192 / 282),
                        mainAxisSpacing: 16.h,
                        crossAxisSpacing: 16.w),
                    itemBuilder: (context, index) {
                      return ProductItemWidget(
                        index: index,
                        data: state.allProductsModel?.data,
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
