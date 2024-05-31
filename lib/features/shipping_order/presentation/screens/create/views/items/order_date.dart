import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/images/icons/icons.dart';
import 'package:dlog/core/ui/image/svg_image.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OrderDate extends StatefulWidget {
  final String orderDate;
  final Function(String) onDateSelected;
  const OrderDate({super.key, required this.orderDate, required this.onDateSelected});

  @override
  State<OrderDate> createState() => _OrderDateState();
}

class _OrderDateState extends State<OrderDate> {
  DateTime? date;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DLogText(
          "Order date",
          style: context.getTextTheme.tertiaryMedium,
          color: context.getColorScheme.blackColor,
        ),
        10.spacingHeight,
        InkWell(
          onTap: () async {
            final datePick = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2100),
            );

            if (datePick != null && datePick != date) {
              setState(() {
                date = datePick;
                String formattedDate = DateFormat("dd/MM/yy").format(date!);
                widget.onDateSelected(formattedDate);
              });
            }
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: context.getColorScheme.grey.light,
              border: Border.all(color: context.getColorScheme.yellow.normal),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DLogSvgImage(
                  path: DLogIcons.iconex.calendar,
                  color: context.getColorScheme.blackColor,
                ),
                30.spacingWidth,
                DLogText(
                  widget.orderDate,
                  style: context.getTextTheme.tertiaryMedium,
                  color: context.getColorScheme.blackColor,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
