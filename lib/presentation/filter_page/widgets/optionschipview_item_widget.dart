import 'package:flutter/material.dart';
import 'package:hajj_urma/core/app_export.dart';

// ignore: must_be_immutable
class OptionschipviewItemWidget extends StatelessWidget {
  const OptionschipviewItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 8.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Free WiFi",
        style: TextStyle(
          color: theme.colorScheme.primaryContainer,
          fontSize: 14.fSize,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w500,
        ),
      ),
      selected: false,
      backgroundColor: appTheme.gray50,
      selectedColor: appTheme.gray50,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.blueGray500,
          width: 1.h,
        ),
        borderRadius: BorderRadius.circular(
          18.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
