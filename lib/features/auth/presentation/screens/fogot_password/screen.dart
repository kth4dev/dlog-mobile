import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

import '../../../../../core/images/graphic/graphic.dart';
import '../../../../../core/ui/image/svg_image.dart';
import 'view/views.dart';

class FogotPasswordScreen extends StatefulWidget {
  const FogotPasswordScreen({super.key});

  @override
  State<FogotPasswordScreen> createState() => _FogotPasswordScreenState();
}

class _FogotPasswordScreenState extends State<FogotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: _screenPadding,
        child:  Column(
          children: [
           _headerAndImageWidget,
            20.spacingHeight,
            const DescriptionView(),
            30.spacingHeight,
            const TextFieldAndButtonView(),
          ],
        ),
      ),
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
    left: 24,
    right: 24,
    top: 40,
    bottom: 38,
  );
  
  Widget get _headerAndImageWidget => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      DLogText("Forget Password",style: context.getTextTheme.secondHeaderMedium,color: context.getColorScheme.black.normal,),
      40.spacingHeight,
      const Align(
        alignment: Alignment.center,
          child:  DLogSvgImage(path: DLogGraphic.fogotPassword, height: 182)),
    ],
  );
}
