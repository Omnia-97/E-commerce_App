import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/app_images.dart';
import 'package:e_commerce_app/core/utils/styles.dart';
import 'package:e_commerce_app/features/product_details/presentation/widgets/add_more_widget.dart';
import 'package:e_commerce_app/features/products/data/models/get_cart_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:readmore/readmore.dart';

import '../../../../my_provider.dart';

class CartItemWidget extends StatefulWidget {
  CartItemWidget({super.key, required this.products, required this.index,});
  List<Products> products;
  final int index;


  @override
  State<CartItemWidget> createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<MyProvider>(context, listen: false);

    return Container(
      width: 389.w,
      height: 126.h,
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
            imageUrl: widget.products[widget.index].product?.imageCover ?? "",
            imageBuilder: (context, imageProvider) => Container(
              width: 120.w,
              height: 126.h,
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
                height: 16.h,
              ),
              Expanded(
                child: SizedBox(
                  width: 134.w,
                  height: 25.h,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: ReadMoreText(
                      widget.products[widget.index].product?.title ?? "",
                      style: Styles.titleMedian
                          .copyWith(color: AppColors.textColor),
                      trimMode: TrimMode.Line,
                      trimLines: 2,
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
                imageUrl:
                    widget.products[widget.index].product?.brand?.image ?? "",
                imageBuilder: (context, imageProvider) => Container(
                  width: 50.w,
                  height: 20.h,
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
                height: 16.h,
              ),
              Text(
                " EGP ${widget.products[widget.index].price! /** myProvider.getQuantity(widget.products[widget.index].product?.id ?? "")*/}",
                style: Styles.titleMedian.copyWith(color: AppColors.textColor),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 100.w, right: 4.w, top: 8.h),
                child: SvgPicture.asset(
                  AppImages.icDelete,
                ),
              ),
              SizedBox(
                height: 39.h,
              ),
              AddMoreWidget(
                  quantity: myProvider.getQuantity(
                      widget.products[widget.index].product?.id ?? ""),
                  onAdd: () {
                    myProvider.addQuantity(
                        widget.products[widget.index].product?.id ?? "",
                        context);
                  },
                  onSubtract: () {
                    myProvider.subtractQuantity(
                        widget.products[widget.index].product?.id ?? "",
                        context);
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
