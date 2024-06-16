import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:dlog/core/ui/button/click_link.dart';
import 'package:dlog/features/profile/presentation/screens/manage_profile/views/edit_profile.dart';
import 'package:dlog/features/profile/presentation/screens/manage_profile/views/text_fields.dart';
import 'package:flutter/material.dart';

class ManageProfileScreen extends StatefulWidget {
  const ManageProfileScreen({super.key});

  @override
  State<ManageProfileScreen> createState() => _ManageProfileScreenState();
}

class _ManageProfileScreenState extends State<ManageProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DLogAppBar(
        actions: [
          DLogClickTextButton(
            text: "Save",
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: _screenPadding,
          child: Column(
            children: [
              EditProfileView(
                onSelectImage: () {},
              ),
              30.spacingHeight,
              const EditProfileTextFieldsView()
            ],
          ),
        ),
      ),
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
        top: 40.0,
        left: 24,
        right: 24,
      );
}
