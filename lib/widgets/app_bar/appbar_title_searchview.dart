import 'package:hajj_urma/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:hajj_urma/core/app_export.dart';

// ignore: must_be_immutable
class AppbarTitleSearchview extends StatelessWidget {
  AppbarTitleSearchview({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomSearchView(
        width: 271.h,
        controller: controller,
        hintText: "360 Stillwater Rd...",
      ),
    );
  }
}
