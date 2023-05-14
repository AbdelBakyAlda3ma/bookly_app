import 'package:bookly/features/home/views/widgets/home_view_body.dart';
import 'package:bookly/features/home/views/widgets/home_view_custom_app_bar.dart';
import 'package:bookly/features/home/views/widgets/home_view_custom_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String id = 'home_view';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBody: true,
      appBar: HomeViewCustomAppBar(),
      body: HomeViewBody(),
      bottomNavigationBar: HomeViewBottomNavigationBar(),
    );
  }
}
