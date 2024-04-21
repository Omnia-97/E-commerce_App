import 'package:e_commerce_app/config.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/features/Categories/presentation/bloc/categories_tab_bloc.dart';
import 'package:e_commerce_app/features/Categories/presentation/widgets/category_tab_item.dart';
import 'package:e_commerce_app/features/Categories/presentation/widgets/sub_category_widget.dart';
import 'package:e_commerce_app/features/home/data/models/categories_model.dart';
import 'package:e_commerce_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/enums/enums.dart';

class CategoriesPage extends StatelessWidget {
  CategoriesPage({super.key});

  //CategoriesModel? categoriesModel;
  String? id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CategoriesTabBloc>(),
      child: Padding(
        padding: EdgeInsets.only(left: 16.w,right: 7.w),
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
                BlocProvider(
                  create: (context) =>
                      getIt<HomeBloc>()..add(const GetCategoriesEvent()),
                  child: BlocConsumer<HomeBloc, HomeState>(
                    listener: (context, state) {
                      if (state.getCategoriesStatus == RequestStatus.success) {
                        BlocProvider.of<HomeBloc>(context)
                            .add(const GetCategoriesEvent());
                      }
                    },
                    //bloc: BlocProvider.of<HomeBloc>(context),
                    builder: (context, state) {
                      return Container(
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
                                if (BlocProvider.of<CategoriesTabBloc>(context)
                                        .state
                                        .selectedCategoryIndex !=
                                    index) {
                                  BlocProvider.of<CategoriesTabBloc>(context)
                                      .add(ChangeCategoryIndexEvent(index));
                                  final categoryId =
                                      state.categoriesModel?.data?[index].id ??
                                          '';
                                  BlocProvider.of<CategoriesTabBloc>(context)
                                      .add(GetSubCategoriesEvent(categoryId));
                                }
                              },
                              child: CategoryTabItem(
                                categoryName:
                                    state.categoriesModel?.data?[index].name ??
                                        "",
                                isSelected:
                                    BlocProvider.of<CategoriesTabBloc>(context)
                                            .state
                                            .selectedCategoryIndex ==
                                        index,
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                BlocProvider(
                  create: (context) =>
                      getIt<HomeBloc>()..add(const GetCategoriesEvent()),
                  child: BlocConsumer<HomeBloc, HomeState>(
                    listener: (context, state) {},
                    builder: (context, state) {
                      if (state.getCategoriesStatus == RequestStatus.success ||
                          BlocProvider.of<CategoriesTabBloc>(context)
                                  .state
                                  .selectedCategoryIndex !=
                              -1) {
                        return BlocConsumer<CategoriesTabBloc,
                            CategoriesTabState>(
                          builder: (context, state) {
                            return SubCategoryWidget(
                              categoryName: BlocProvider.of<HomeBloc>(context)
                                      .state
                                      .categoriesModel
                                      ?.data?[
                                          BlocProvider.of<CategoriesTabBloc>(
                                                  context)
                                              .state
                                              .selectedCategoryIndex]
                                      .name ??
                                  "",
                              categoryImageUrl:
                                  BlocProvider.of<HomeBloc>(context)
                                          .state
                                          .categoriesModel
                                          ?.data?[BlocProvider.of<
                                                  CategoriesTabBloc>(context)
                                              .state
                                              .selectedCategoryIndex]
                                          .image ??
                                      "",
                              state: state,
                              subCategoryName: state
                                      .subCategoriesModel
                                      ?.data?[state.selectedCategoryIndex]
                                      .name ??
                                  "",
                              subImageUrl: BlocProvider.of<HomeBloc>(context)
                                      .state
                                      .categoriesModel
                                      ?.data?[
                                          BlocProvider.of<CategoriesTabBloc>(
                                                  context)
                                              .state
                                              .selectedCategoryIndex]
                                      .image ??
                                  "",
                            );
                          },
                          listener: (context, state) {
                            if (state.getCategoriesTabStatus ==
                                RequestStatus.success) {
                              BlocProvider.of<CategoriesTabBloc>(context)
                                  .add(GetSubCategoriesEvent(BlocProvider.of<HomeBloc>(context)
                                  .state
                                  .categoriesModel
                                  ?.data?[
                              BlocProvider.of<CategoriesTabBloc>(
                                  context)
                                  .state
                                  .selectedCategoryIndex]
                                  .id ??
                                  ""));
                            }
                          },
                        );
                      }
                      return Container();
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
