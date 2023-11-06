
import 'package:flutter/material.dart';
import 'package:oci_app/core/app_export.dart';

import 'package:oci_app/presentation/root_screen/controller/root_screen_controller.dart';
import 'package:oci_app/presentation/root_1_page/Root_One_Page.dart';
import 'package:oci_app/presentation/root_2_page/root_two_page.dart';

import 'package:oci_app/widgets/app_bar/appbar_image.dart';
import 'package:oci_app/widgets/app_bar/custom_app_bar.dart';
import 'package:oci_app/widgets/custom_navigation_bar.dart';

class RootScreen
    extends GetWidget<RootScreenController> {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.rootOnePage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomNavigationBar(onChanged: (NavigationEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(NavigationEnum type) {
    switch (type) {
      case NavigationEnum.Page1:
        return AppRoutes.rootOnePage;
      case NavigationEnum.Page2:
        return AppRoutes.rootTwoPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.rootOnePage:
        return RootOnePage();
      case AppRoutes.rootTwoPage:
        return RootTwoPage();
      default:
        return DefaultWidget();
    }
  }
}
