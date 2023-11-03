import 'package:oci_app/presentation/root_screen/root_screen.dart';
import 'package:oci_app/presentation/root_screen/binding/root_screen_binding.dart';
import 'package:oci_app/presentation/subtitles_screen/subtitles_screen.dart';
import 'package:oci_app/presentation/subtitles_screen/binding/subtitles_binding.dart';
import 'package:oci_app/presentation/video_library_screen/video_library_screen.dart';
import 'package:oci_app/presentation/video_library_screen/binding/video_library_binding.dart';
import 'package:oci_app/presentation/like_post_screen/like_post_screen.dart';
import 'package:oci_app/presentation/like_post_screen/binding/like_post_binding.dart';
import 'package:oci_app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:oci_app/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String rootScreen = '/root_screen';

  static const String subtitlesScreen = '/subtitles_screen';

  static const String videoLibraryScreen = '/video_library_screen';

  static const String likePostScreen = '/like_post_screen';

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
      name: subtitlesScreen,
      page: () => SubtitlesScreen(),
      bindings: [
        SubtitlesBinding(),
      ],
    ),
    GetPage(
      name: videoLibraryScreen,
      page: () => VideoLibraryScreen(),
      bindings: [
        VideoLibraryBinding(),
      ],
    ),
    GetPage(
      name: likePostScreen,
      page: () => LikePostScreen(),
      bindings: [
        LikePostBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SubtitlesScreen(),
      bindings: [
        SubtitlesBinding(),
      ],
    )
  ];
}
