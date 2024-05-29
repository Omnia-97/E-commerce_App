import 'package:e_commerce_app/core/components/reusable_components/custom_app_bar.dart';
import 'package:e_commerce_app/core/utils/app_images.dart';
import 'package:e_commerce_app/features/Categories/presentation/pages/categories_page.dart';
import 'package:e_commerce_app/features/account/presentation/pages/account_page.dart';
import 'package:e_commerce_app/features/home/presentation/pages/home.dart';
import 'package:e_commerce_app/features/products/presentation/bloc/products_bloc.dart';
import 'package:e_commerce_app/features/wish_list/presentation/pages/wish_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'config.dart';
import 'core/components/reusable_components/bottom_active_icon.dart';
import 'core/enums/enums.dart';
import 'features/home/presentation/bloc/home_bloc.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeBloc>() ..add(
        const GetCategoriesEvent(),
      )
        ..add(
          const GetBrandsEvent(),
        ),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return BlocProvider(
            create: (context) =>
                getIt<ProductsBloc>()..add(const GetProductToCartEvent()),
            child: BlocConsumer<ProductsBloc, ProductsState>(
                listener: (context, state) {
                  if (state.addProductToCartStatus == RequestStatus.success) {
                    BlocProvider.of<ProductsBloc>(context)
                        .add(const GetProductToCartEvent());
                  }
                },
              builder: (context, state) {
                return Scaffold(
                  extendBody: true,
                  resizeToAvoidBottomInset: true,
                  appBar: CustomAppBar(
                    kToolbarHeight: 96.h,
                    width: 20.w,
                    badgeText: BlocProvider.of<ProductsBloc>(context)
                        .state
                        .cartItemLength
                        .toString(),
                  ),
                  bottomNavigationBar: Container(
                    height: 56.h,
                    margin: EdgeInsets.zero,
                    padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.r),
                      child: BottomNavigationBar(
                        iconSize: 24.h,
                        selectedFontSize: 0,
                        unselectedFontSize: 0,
                        currentIndex: BlocProvider.of<HomeBloc>(context)
                            .state
                            .currentIndex,
                        onTap: (value) {
                          BlocProvider.of<HomeBloc>(context)
                              .add(changeBottomNavBarEvent(value));
                        },
                        items: const [
                          BottomNavigationBarItem(
                              icon: ImageIcon(
                                AssetImage(AppImages.homeIc),
                              ),
                              activeIcon: BottomActiveIcon(
                                padding: 9,
                                imageIcon: AppImages.homeIc,
                              ),
                              label: ''),
                          BottomNavigationBarItem(
                              icon: ImageIcon(
                                AssetImage(AppImages.categoryIc),
                              ),
                              activeIcon: BottomActiveIcon(
                                padding: 8,
                                imageIcon: AppImages.categoryIc,
                              ),
                              label: ''),
                          BottomNavigationBarItem(
                              icon: ImageIcon(
                                AssetImage(AppImages.wishListIc),
                              ),
                              activeIcon: BottomActiveIcon(
                                padding: 8,
                                imageIcon: AppImages.wishListIc,
                              ),
                              label: ''),
                          BottomNavigationBarItem(
                              icon: ImageIcon(
                                AssetImage(AppImages.accountIc),
                              ),
                              activeIcon: BottomActiveIcon(
                                padding: 8,
                                imageIcon: AppImages.accountIc,
                              ),
                              label: ''),
                        ],
                      ),
                    ),
                  ),
                  body: tabs[
                      BlocProvider.of<HomeBloc>(context).state.currentIndex],
                );
              },
            ),
          );
        },
      ),
    );
  }
}

List<Widget> tabs = [
  const HomePage(),
   CategoriesPage(),
  const WishListPage(),
  const AccountPage()
];
