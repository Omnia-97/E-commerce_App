import 'package:e_commerce_app/config.dart';
import 'package:e_commerce_app/core/enums/enums.dart';
import 'package:e_commerce_app/features/home/presentation/widgets/brand_item_widget.dart';
import 'package:e_commerce_app/features/home/presentation/widgets/carousel_widget.dart';
import 'package:e_commerce_app/features/home/presentation/widgets/category_item.dart';
import 'package:e_commerce_app/features/home/presentation/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/styles.dart';
import '../bloc/home_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        if (state.getCategoriesStatus == RequestStatus.failure) {
          showDialog(
            context: context,
            builder: (context) => Center(
              child: AlertDialog(
                title: const Text(AppStrings.error),
                content: Text(
                  state.categoriesFailure?.message ?? AppStrings.wrong,
                ),
              ),
            ),
          );
        }
      },
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CarouselWidget(),
              const TitleWidget(),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                height: 290.h,
                child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left: 5.w),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.15,
                    ),
                    itemCount: state.categoriesModel?.data?.length ?? 0,
                    itemBuilder: (context, index) {
                      return CategoryItem(
                          categoryImageUrl:
                              state.categoriesModel?.data?[index].image ?? "",
                          categoryText:
                              state.categoriesModel?.data?[index].name ?? "");
                    }),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: Text(
                  AppStrings.brands,
                  style: Styles.titleMedian.copyWith(
                    color: AppColors.textColor,
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                height: 147.h,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return BrandItemWidget(
                        brandImageUrl:
                            state.brandsModel?.data?[index].image ?? "",
                        brandText:
                            state.brandsModel?.data?[index].name ?? "");
                  },
                  itemCount: state.brandsModel?.data?.length ?? 0,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(
                height: 100.h,
              ),
            ],
          ),
        );
      },
    );
  }
}
