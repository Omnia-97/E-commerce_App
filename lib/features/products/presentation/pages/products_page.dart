import 'package:e_commerce_app/config.dart';
import 'package:e_commerce_app/core/components/reusable_components/custom_app_bar.dart';
import 'package:e_commerce_app/core/enums/enums.dart';
import 'package:e_commerce_app/features/products/presentation/widgets/product_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../bloc/products_bloc.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    String id = ModalRoute.of(context)!.settings.arguments as String;
    return BlocProvider(
      create: (context) => getIt<ProductsBloc>()
        ..add(GetAllProductsEvent(id))
        ..add(const GetProductToCartEvent()),
      child: BlocConsumer<ProductsBloc, ProductsState>(
        listener: (context, state) {
          if (state.addProductToCartStatus == RequestStatus.success) {
            BlocProvider.of<ProductsBloc>(context)
                .add(const GetProductToCartEvent());
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: CustomAppBar(
              badgeText: state.cartItemLength.toString(),
              kToolbarHeight: 96.h,
              width: 7.w,
              leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 38.h,
                    left: 3.w,
                  ),
                  child: const Icon(
                    Icons.arrow_back,
                  ),
                ),
              ),
            ),
            body: Padding(
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
                        crossAxisSpacing: 16.w,
                      ),
                      itemBuilder: (context, index) {
                        return ProductItemWidget(
                          onTap: () {
                            BlocProvider.of<ProductsBloc>(context).add(
                              AddProductToCartEvent(
                                  state.allProductsModel?.data?[index].id ??
                                      ""),
                            );
                          },
                          index: index,
                          data: state.allProductsModel?.data,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
