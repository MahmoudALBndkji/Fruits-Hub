import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: GestureDetector(
        onTap: () {
          while (Navigator.canPop(context)) {
            Navigator.pop(context);
          }
        },
        child: const Icon(
          Icons.arrow_back_ios_new,
        ),
      ),
      centerTitle: true,
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyles.bold19,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
