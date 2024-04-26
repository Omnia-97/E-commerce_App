import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/config/routes/pages_route_name.dart';
import 'package:e_commerce_app/core/components/reusable_components/bottom_active_icon.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/app_images.dart';
import 'package:e_commerce_app/core/utils/styles.dart';
import 'package:e_commerce_app/features/products/data/models/all_products_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({
    super.key,
    this.data,
    required this.index,
    required this.onTap,
  });
  final int index;
  final List<Data>? data;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    var product = data?[index];
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, PagesRouteName.productDetails,
            arguments: product);
      },
      child: Container(
        width: 191.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(
              color: AppColors.primaryColor.withOpacity(0.3), width: 2.w),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                AspectRatio(
                  aspectRatio: 1.15,
                  child: CachedNetworkImage(
                    imageUrl: product?.imageCover ?? "",
                    imageBuilder: (context, imageProvider) => Container(
                      width: double.infinity,
                      height: 150.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.r),
                          topRight: Radius.circular(15.r),
                        ),
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) => Center(
                      child: CircularProgressIndicator(
                        value: downloadProgress.progress,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
                const BottomActiveIcon(
                  imageIcon: AppImages.wishListIc,
                  iconSize: 24,
                  iconColor: AppColors.primaryColor,
                ),
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 8.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product?.brand?.name ?? "",
                    style: Styles.categoryText,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    product?.description ?? "",
                    style: Styles.categoryText,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "EGP ${product?.price?.toString() ?? " "}",
                        style: Styles.categoryText,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      if (product?.priceAfterDiscount != null &&
                          product?.priceAfterDiscount != 0 &&
                          product?.priceAfterDiscount != product?.price) ...[
                        Text(
                          "${product?.priceAfterDiscount?.toString() ?? " "} EGP",
                          style: Styles.viewText.copyWith(
                            decoration: TextDecoration.lineThrough,
                            decorationColor:
                                AppColors.primaryColor.withOpacity(0.6),
                            decorationThickness: 1,
                            color: AppColors.primaryColor.withOpacity(0.6),
                          ),
                        ),
                      ]
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Review',
                        style: Styles.viewText,
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Text(
                        '(${product?.ratingsAverage?.toString() ?? ""})',
                        style: Styles.viewText,
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      SvgPicture.asset(
                        AppImages.star,
                        width: 15.w,
                        height: 15.h,
                      ),
                      SizedBox(
                        width: 48.w,
                      ),
                      InkWell(
                        onTap: () {
                          onTap();
                        },
                        child: SvgPicture.asset(
                          AppImages.plusCircle,
                          width: 32.w,
                          height: 32.h,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
