import 'package:oci_app/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  CustomNavigationBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  RxInt selectedIndex = 0.obs;

  List<NavigationMenuModel> bottomMenuList = [
    NavigationMenuModel(
      icon: Icons.description,
      title: "Page1",
      type: NavigationEnum.Page1,
    ),
    NavigationMenuModel(
      icon: Icons.description,
      title: "Page2",
      type: NavigationEnum.Page2,
    )

  ];

  Function(NavigationEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    bottomMenuList[index].icon,
                    size: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                    ),
                  ),
                ],
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged?.call(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum NavigationEnum {
  Page1,
  Page2
}

class NavigationMenuModel {
  NavigationMenuModel({
    required this.icon,
    this.title,
    required this.type,
  });

  IconData? icon;

  String? title;

  NavigationEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
