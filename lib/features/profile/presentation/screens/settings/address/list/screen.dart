import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:dlog/features/profile/presentation/res/locale/locale.dart';
import 'package:flutter/material.dart';

import 'views/views.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DLogAppBar(
        title: context.getLocale(ProfileLocale.address),
      ),
      body: Padding(
        padding: _screenPadding,
        child: const AddressListView(),
      ),
      floatingActionButton: const AddressFABView(),
    );
  }

  EdgeInsets get _screenPadding =>
      const EdgeInsets.only(left: 24, right: 24, top: 30, bottom: 30);
}
