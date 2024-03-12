import 'package:hajj_urma/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:hajj_urma/core/app_export.dart';

// ignore: must_be_immutable
class ConfirmrequestgridItemWidget extends StatelessWidget {
  const ConfirmrequestgridItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineGray300.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(9.h),
            decoration: IconButtonStyleHelper.fillGrayTL20,
            child: CustomImageView(
              imagePath: ImageConstant.imgHomePrimary,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Home Closed",
                  style: theme.textTheme.labelLarge,
                ),
                Text(
                  "25",
                  style: CustomTextStyles.titleSmallExtraBold,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
