import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/app_bar/item/header.dart';
import 'package:dlog/core/ui/text_fields/search_text_field.dart';
import 'package:flutter/material.dart';

class DLogHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DLogHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            children: [
              const DLogHomeAppBarHeader(),
              20.spacingHeight,
              const DLogSearchTextField(isEnabled: false)
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(128);
}
