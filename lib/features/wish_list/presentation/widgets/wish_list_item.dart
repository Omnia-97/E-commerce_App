import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/config.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/app_images.dart';
import 'package:e_commerce_app/core/utils/app_strings.dart';
import 'package:e_commerce_app/core/utils/styles.dart';
import 'package:e_commerce_app/features/products/presentation/bloc/products_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:readmore/readmore.dart';
import '../../../home/data/models/get_wish_list_model.dart';

class WishListItem extends StatelessWidget {
  WishListItem({
    super.key,
    required this.data,
    required this.index,
    required this.onTap,
  });

  List<Data> data;
  final int index;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 389.w,
      height: 113.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(
          color: AppColors.primaryColor.withOpacity(0.3),
          width: 1.w,
        ),
      ),
      child: Row(
        children: [
          CachedNetworkImage(
            imageUrl: data[index].imageCover ?? "",
            imageBuilder: (context, imageProvider) => Container(
              width: 120.w,
              height: 113.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    color: AppColors.primaryColor.withOpacity(0.3),
                    width: 1.w,
                  )),
            ),
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                Center(
              child: CircularProgressIndicator(
                value: downloadProgress.progress,
                color: AppColors.primaryColor,
              ),
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          SizedBox(
            width: 8.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Expanded(
                child: SizedBox(
                  width: 134.w,
                  height: 18.h,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: ReadMoreText(
                      data[index].title ?? "",
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
              ),
              SizedBox(
                height: 13.h,
              ),
              CachedNetworkImage(
                imageUrl: data[index].brand?.image ?? "",
                imageBuilder: (context, imageProvider) => Container(
                  width: 50.w,
                  height: 18.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    Center(
                  child: CircularProgressIndicator(
                    value: downloadProgress.progress,
                    color: AppColors.primaryColor,
                  ),
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
              SizedBox(
                height: 18.h,
              ),
              Row(
                children: [
                  Text(
                    "EGP ${data[index].price?.toString() ?? " "}",
                    style: Styles.categoryText,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Text(
                    "${data[index].sold.toString()} ${AppStrings.sold} ",
                    style: Styles.viewText.copyWith(
                      decorationColor: AppColors.primaryColor.withOpacity(0.6),
                      decorationThickness: 1,
                      color: AppColors.primaryColor.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          Column(
            children: [
              InkWell(
                onTap: (){
                  onTap();
                },
                child: Padding(
                  padding: EdgeInsets.only(top: 8.h, left: 40.w),
                  child: Container(
                    width: 30.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          offset: const Offset(0, 5),
                          blurRadius: 10,
                        ),
                      ],
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(5.r),
                      child: SvgPicture.asset(
                        AppImages.icAddedToWish,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 31.h,
              ),
              BlocProvider(
                create: (context) => getIt<ProductsBloc>(),
                child: BlocBuilder<ProductsBloc, ProductsState>(
                  builder: (context, state) {
                    return Padding(
                      padding: EdgeInsets.only(right: 10.w),
                      child: customAddToCartButton(() {
                        BlocProvider.of<ProductsBloc>(context).add(
                          AddProductToCartEvent(
                            data[index].id ?? "",
                          ),
                        );
                        BlocProvider.of<ProductsBloc>(context).add(
                          const GetProductToCartEvent(),
                        );
                      }),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget customAddToCartButton(VoidCallback onTap) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
          width: 100.w,
          height: 36.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: Text(
            AppStrings.addToCart,
            style: Styles.titleMedian.copyWith(fontSize: 14.sp),
          )),
    );
  }
}
