import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/app_images.dart';
import 'package:e_commerce_app/features/Categories/presentation/pages/categories_page.dart';
import 'package:e_commerce_app/features/account/presentation/pages/account_page.dart';
import 'package:e_commerce_app/features/home/presentation/pages/home.dart';
import 'package:e_commerce_app/features/wish_list/presentation/pages/wish_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'config.dart';
import 'core/components/reusable_components/bottom_active_icon.dart';
import 'core/components/reusable_components/custom_search_text_form_field.dart';
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
      create: (context) => getIt<HomeBloc>(),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return Scaffold(
            extendBody: true,
            resizeToAvoidBottomInset: true,
            appBar: AppBar(
              toolbarHeight: 96.h,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 1.w),
                    child: Image.asset(
                      AppImages.homeLogo,
                      width: 66.w,
                      height: 22.h,
                    ),
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Row(
                    children: [
                      const SearchTextFormField(),
                      SizedBox(
                        width: 22.w,
                      ),
                      const ImageIcon(
                        AssetImage(AppImages.shoppingIc),
                        color: AppColors.primaryColor,
                        size: 24,
                      ),
                    ],
                  ),
                ],
              ),
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
                  currentIndex: state.currentIndex,
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
            body: tabs[state.currentIndex],
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
