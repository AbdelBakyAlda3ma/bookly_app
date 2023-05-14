import 'package:bookly/utils/app_image.dart';
import 'package:flutter/material.dart';
import '../../../../utils/app_colors.dart';

class HomeViewCustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const HomeViewCustomAppBar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primaryColor,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Image.asset(
        AppImages.logo,
        width: 80,
        height: 16,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Image.asset(AppImages.searchIcon),
        ),
      ],
    );
  }
}
