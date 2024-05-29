import 'package:e_commerce_app/config.dart';
import 'package:e_commerce_app/config/routes/pages_route_name.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/features/Categories/presentation/widgets/category_tab_item.dart';
import 'package:e_commerce_app/features/Categories/presentation/widgets/sub_category_widget.dart';
import 'package:e_commerce_app/features/home/data/models/categories_on_category_model.dart';
import 'package:e_commerce_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../home/data/models/categories_model.dart';
import '../widgets/sub_category_item.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeBloc>()..add(const GetCategoriesEvent()),
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.only(left: 16.w, right: 7.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 150.w,
                      height: 715.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.r),
                          bottomLeft: Radius.circular(10.r),
                        ),
                        border: Border(
                            bottom: BorderSide(
                              color: AppColors.primaryColor.withOpacity(0.3),
                            ),
                            left: BorderSide(
                              color: AppColors.primaryColor.withOpacity(0.3),
                            ),
                            top: BorderSide(
                              color: AppColors.primaryColor.withOpacity(0.3),
                            )),
                      ),
                      child: ListView.builder(
                        itemCount: state.categoriesModel?.data?.length ?? 0,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              if (state.selectedCategoryIndex != index) {
                                BlocProvider.of<HomeBloc>(context)
                                    .add(ChangeCategoryIndexEvent(index));
                                final categoryId =
                                    state.categoriesModel?.data?[index].id ??
                                        '';
                                BlocProvider.of<HomeBloc>(context)
                                    .add(GetSubCategoriesEvent(categoryId));
                              }
                            },
                            child: CategoryTabItem(
                              categoryName:
                                  state.categoriesModel?.data?[index].name ??
                                      "",
                              isSelected: state.selectedCategoryIndex == index,
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    if (state.selectedCategoryIndex != -1) ...[
                      SubCategoryWidget(
                        onTap: () {
                          Navigator.pushNamed(context, PagesRouteName.products,
                              arguments: state.categoriesModel
                                      ?.data?[state.selectedCategoryIndex].id ??
                                  "");
                        },
                        categoryName: state.categoriesModel
                                ?.data?[state.selectedCategoryIndex].name ??
                            "",
                        categoryImageUrl: state.categoriesModel
                                ?.data?[state.selectedCategoryIndex].image ??
                            "",
                        child: GridView.builder(
                            padding: EdgeInsets.only(top: 16.h),
                            scrollDirection: Axis.vertical,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              //mainAxisSpacing: 14.h,
                              crossAxisSpacing: 14.w,
                              childAspectRatio: 1 / 2,
                            ),
                            itemCount:
                                state.subCategoriesModel?.data?.length ?? 0,
                            itemBuilder: (context, index) {
                              return SubCategoryItem(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, PagesRouteName.products,
                                      arguments: state
                                              .categoriesModel
                                              ?.data?[
                                                  state.selectedCategoryIndex]
                                              .id ??
                                          "");
                                },
                                subCategoryData:
                                    state.subCategoriesModel?.data?[index] ??
                                        SubCategoryData(),
                                categoryData: state.categoriesModel
                                        ?.data?[state.selectedCategoryIndex] ??
                                    Data(),
                              );
                            }),
                      ),
                    ],
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
