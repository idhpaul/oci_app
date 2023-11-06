import 'package:oci_app/presentation/root_screen/root_screen.dart';
import 'package:oci_app/presentation/root_screen/binding/root_screen_binding.dart';
import 'package:oci_app/presentation/subtitles_screen/subtitles_screen.dart';
import 'package:oci_app/presentation/subtitles_screen/binding/subtitles_binding.dart';
import 'package:oci_app/presentation/root_1_page/Root_One_Page.dart';
import 'package:oci_app/presentation/root_1_page/binding/root_one_binding.dart';
import 'package:oci_app/presentation/root_2_page/root_two_page.dart';
import 'package:oci_app/presentation/root_2_page/binding/root_two_binding.dart';
import 'package:oci_app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:oci_app/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String rootScreen = '/root_screen';

  static const String rootOnePage= '/root_own_page';

  static const String rootTwoPage = '/root_two_page';

  static const String subtitlesScreen = '/subtitles_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: rootScreen,
      page: () => RootScreen(),
      bindings: [
        RootBinding(),
      ],
    ),
    GetPage(
      name: rootOnePage,
      page: () => RootOnePage(),
      bindings: [
        RootOneBinding(),
      ],
    ),
    GetPage(
      name: rootTwoPage,
      page: () => RootTwoPage(),
      bindings: [
        RootTwoBinding(),
      ],
    ),
    GetPage(
      name: subtitlesScreen,
      page: () => SubtitlesScreen(),
      bindings: [
        SubtitlesBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
  ];
}
