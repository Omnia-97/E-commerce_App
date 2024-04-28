import 'package:e_commerce_app/config.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/app_images.dart';
import 'package:e_commerce_app/core/utils/app_strings.dart';
import 'package:e_commerce_app/features/cart/presentation/widgets/cart_item_widget.dart';
import 'package:e_commerce_app/features/cart/presentation/widgets/check_out_button.dart';
import 'package:e_commerce_app/features/products/presentation/bloc/products_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/utils/styles.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProductsBloc>()
        ..add(
          const GetProductToCartEvent(),
        ),
      child: BlocConsumer<ProductsBloc, ProductsState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                AppStrings.cart,
                style: Styles.appBarTitle,
              ),
              actions: [
                SvgPicture.asset(
                  AppImages.searchIcon,
                  width: 28.w,
                  height: 28.h,
                ),
                SizedBox(
                  width: 20.w,
                ),

              ],
            ),
            body: Padding(
              padding: EdgeInsets.only(
                  left: 16.w, right: 16.w, top: 10.h, bottom: 16.h),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return CartItemWidget(
                          index: index,
                          products: state.getCartModel?.data?.products ?? [],
                        );
                      },
                      itemCount: state.cartItemLength,
                      separatorBuilder: (context, index) => SizedBox(
                        height: 16.h,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 26.h,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppStrings.totalPrice,
                            style: Styles.titleMedian.copyWith(
                              color: AppColors.textColor.withOpacity(0.6),
                            ),
                          ),
                          Text(
                            'EGP ${state.getCartModel?.data?.totalCartPrice ?? 0}',
                            style: Styles.titleMedian.copyWith(
                              color: AppColors.textColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      const CheckOutButton(),
                    ],
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
