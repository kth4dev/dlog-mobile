import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class NotificationDetailItem extends StatelessWidget {
  const NotificationDetailItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.asset(
            "assets/images/sample/ex.jpg",
            height: 177,
            fit: BoxFit.fill,
            width: double.infinity,
          ),
        ),
        30.spacingHeight,
        DLogText(
          "Title notification",
          style: context.getTextTheme.bodyBold,
          color: context.getColorScheme.black.normal,
        ),
        10.spacingHeight,
        DLogText(
          "Lorem ipsum dolor sit amet consectetur. Elit ultricies sodales dignissim fermentum enim dui at risus mi. Arcu mi morbi elementum venenatis ut. Senectus interdum dui enim et ac rhoncus. Pellentesque donec nibh nunc faucibus egestas ipsum malesuada. Varius et blandit arcu lorem aenean. Donec ultrices est at tortor mauris amet integer.",
          style: context.getTextTheme.secondaryRegular,
          color: context.getColorScheme.blackColor,
        )
      ],
    );
  }
}
