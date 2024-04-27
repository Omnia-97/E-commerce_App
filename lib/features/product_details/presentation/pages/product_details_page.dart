import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/config/routes/pages_route_name.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/app_images.dart';
import 'package:e_commerce_app/core/utils/app_strings.dart';
import 'package:e_commerce_app/core/utils/styles.dart';
import 'package:e_commerce_app/features/product_details/presentation/widgets/add_more_widget.dart';
import 'package:e_commerce_app/features/product_details/presentation/widgets/add_to_cart_button.dart';
import 'package:e_commerce_app/features/product_details/presentation/widgets/image_carousel_widget.dart';
import 'package:e_commerce_app/features/product_details/presentation/widgets/sold_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:readmore/readmore.dart';

import '../../../products/data/models/all_products_model.dart';

class ProductDetailsPage extends StatelessWidget {
  ProductDetailsPage({super.key});
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    var product = ModalRoute.of(context)!.settings.arguments as Data;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Product Details',
          style: Styles.appBarTitle,
        ),
        actions: [
          SvgPicture.asset(
            AppImages.searchIcon,
            width: 28.w,
            height: 28.h,
          ),
          SizedBox(
            width: 32.w,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, PagesRouteName.cartPage);
            },
            child: Padding(
              padding: EdgeInsets.only(right: 16.w),
              child: SvgPicture.asset(
                AppImages.shoppingIc,
                width: 28.w,
                height: 28.h,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageCarouselWidget(
              data: product,
            ),
            SizedBox(
              height: 24.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 295.w,
                  height: 37.h,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: ReadMoreText(
                      product.title ?? "",
                      style: Styles.titleMedian
                          .copyWith(color: AppColors.textColor),
                      trimMode: TrimMode.Line,
                      trimLines: 1,
                      colorClickableText: AppColors.primaryColor,
                      trimExpandedText: ' Read less',
                      trimCollapsedText: 'Read more',
                      moreStyle: Styles.categoryText,
                    ),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  height: 34.h,
                  child: Text(
                    "EGP ${product.price.toString()} ",
                    style:
                        Styles.titleMedian.copyWith(color: AppColors.textColor),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SoldWidget(soldText: product.sold.toString()),
                SizedBox(
                  width: 16.w,
                ),
                SvgPicture.asset(
                  AppImages.star,
                  width: 15.w,
                  height: 15.h,
                ),
                SizedBox(
                  width: 4.w,
                ),
                Text(
                  '${product.ratingsAverage.toString()}(${product.ratingsQuantity.toString()})',
                  style: Styles.categoryText,
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(top: 8.h),
                  child: const AddMoreWidget(),
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              AppStrings.description,
              style: Styles.titleMedian.copyWith(color: AppColors.textColor),
            ),
            SizedBox(
              height: 8.h,
            ),
            SizedBox(
              width: 381.w,
              height: 70.h,
              child: SingleChildScrollView(
                child: ReadMoreText(
                  product.description ?? "",
                  style: Styles.categoryText.copyWith(
                    color: AppColors.textColor.withOpacity(0.6),
                  ),
                  trimMode: TrimMode.Line,
                  trimLines: 3,
                  colorClickableText: AppColors.primaryColor,
                  trimExpandedText: ' Read less',
                  trimCollapsedText: 'Read more',
                  moreStyle: Styles.categoryText,
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              AppStrings.brand,
              style: Styles.titleMedian.copyWith(
                color: AppColors.textColor,
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Center(
              child: CachedNetworkImage(
                imageUrl: product.brand?.image ?? "",
                imageBuilder: (context, imageProvider) => Container(
                  width: 300.w,
                  height: 160.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    border: Border.all(
                        color: AppColors.primaryColor.withOpacity(0.3),
                        width: 1.w),
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 52.h,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      AppStrings.totalPrice,
                      style: Styles.titleMedian.copyWith(
                        color: AppColors.textColor.withOpacity(0.6),
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Text(
                      'EGP ${product.price! * quantity}',
                      style: Styles.titleMedian.copyWith(
                        color: AppColors.textColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 30.w,
                ),
                const AddToCartButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
