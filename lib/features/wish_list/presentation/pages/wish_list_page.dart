import 'package:e_commerce_app/config.dart';
import 'package:e_commerce_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:e_commerce_app/features/wish_list/presentation/widgets/wish_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WishListPage extends StatelessWidget {
  const WishListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeBloc>()
        ..add(
          const GetProductToWishListEvent(),
        ),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
            child: ListView.separated(
              itemBuilder: (context, index) {
                return WishListItem(
                    data: state.getWishListModel?.data ?? [], index: index);
              },
              itemCount: state.getWishListModel?.data?.length ?? 0,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 24.h,
                );
              },
            ),
          );
        },
      ),
    );
  }
}
