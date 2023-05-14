import 'dart:ui';

import 'package:bookly/utils/app_image.dart';
import 'package:flutter/material.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBottomNavigationBar extends StatelessWidget {
  const HomeViewBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 30,
        left: 30,
        bottom: 30,
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(36),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: DecoratedBox(
            decoration: BoxDecoration(color: Colors.white.withOpacity(0.2)),
            child: FloatingNavbar(
              padding: const EdgeInsets.all(0),
              margin: const EdgeInsets.symmetric(vertical: 8),
              selectedBackgroundColor: Colors.transparent,
              selectedItemColor: Colors.white,
              itemBorderRadius: 0,
              backgroundColor: Colors.transparent,
              onTap: (int val) {
                //returns tab id which is user tapped
              },
              currentIndex: 0,
              items: [
                FloatingNavbarItem(
                    customWidget: const Icon(FontAwesomeIcons.book)),
                FloatingNavbarItem(customWidget: const Icon(Icons.bookmark)),
                FloatingNavbarItem(customWidget: const Icon(Icons.audiotrack)),
                FloatingNavbarItem(
                    customWidget: const CircleAvatar(
                  radius: 16,
                  backgroundImage: AssetImage(AppImages.profileImge),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
