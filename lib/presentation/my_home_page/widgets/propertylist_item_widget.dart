import 'package:flutter/material.dart';
import 'package:hajj_urma/core/app_export.dart';

// ignore: must_be_immutable
class PropertylistItemWidget extends StatelessWidget {
  PropertylistItemWidget({
    Key? key,
    this.onTapProperty,
  }) : super(
          key: key,
        );

  VoidCallback? onTapProperty;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapProperty!.call();
      },
      child: Container(
        decoration: AppDecoration.white.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage,
              height: 109.v,
              width: 102.h,
              radius: BorderRadius.horizontal(
                left: Radius.circular(10.h),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 15.v,
                bottom: 12.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Primary Apartment",
                    style: CustomTextStyles.titleMediumBold,
                  ),
                  SizedBox(height: 7.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgIconBlueGray500,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(bottom: 3.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          "3",
                          style: CustomTextStyles.titleSmallBluegray500Medium,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgIconBlueGray50016x16,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(
                          left: 12.h,
                          bottom: 3.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          "2",
                          style: CustomTextStyles.titleSmallBluegray500Medium,
                        ),
                      ),
                      Container(
                        width: 67.h,
                        margin: EdgeInsets.only(left: 12.h),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgIcon16x16,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                              margin: EdgeInsets.only(bottom: 3.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "1,880",
                                      style: CustomTextStyles
                                          .titleSmallff66687aMedium,
                                    ),
                                    TextSpan(
                                      text: " ",
                                    ),
                                    TextSpan(
                                      text: "Ft",
                                      style:
                                          CustomTextStyles.labelMediumff66687a,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.v),
                  Text(
                    "1,600 - 1,800 ",
                    style: CustomTextStyles.titleMediumPrimary,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
