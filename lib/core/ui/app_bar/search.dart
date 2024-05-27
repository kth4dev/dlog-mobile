import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/text_fields/search_text_field.dart';
import 'package:flutter/material.dart';

class DLogSearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TextEditingController searchController;

  const DLogSearchAppBar({
    super.key,
    required this.searchController,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: context.getColorScheme.black.normal,
      title: DLogSearchTextField(controller: searchController),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(64);
}
