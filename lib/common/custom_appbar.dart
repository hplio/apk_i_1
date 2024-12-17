import 'package:apk_i_1/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CAppBar({
    super.key,
    this.leading = true,
    this.icon,
    this.onPress,
    this.isLeadingShow = false,
    this.title,
    this.action,
    this.leadingWidget,
  });

  final bool leading;
  final IconData? icon;
  final void Function()? onPress;
  final bool isLeadingShow;
  final Widget? title;
  final Widget? leadingWidget;
  final List<Widget>? action;

  @override
  Widget build(BuildContext context) {
    final bool dark = Theme.of(context).brightness == Brightness.dark;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: leading
            ? IconButton(
                onPressed: () => Get.back(),
                icon: Icon(
                  Icons.arrow_back,
                  color: dark ? Colors.white : TColor.black,
                ),
              )
            : isLeadingShow
                ? leadingWidget
                : null,
        title: title,
        actions: action,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55.0);
}
