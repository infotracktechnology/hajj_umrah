import 'package:hajj_urma/widgets/app_bar/custom_app_bar.dart';import 'package:hajj_urma/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:hajj_urma/widgets/app_bar/appbar_subtitle_two.dart';import 'package:hajj_urma/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:hajj_urma/core/app_export.dart';class NotificationEmptyStatesScreen extends StatelessWidget {const NotificationEmptyStatesScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.only(left: 41.h, top: 100.v, right: 41.h), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgMailNotification, height: 204.v, width: 255.h), SizedBox(height: 31.v), Text("No Notifications Yet", style: theme.textTheme.titleLarge), SizedBox(height: 9.v), SizedBox(width: 292.h, child: Text("No notification right now, notifications about your activity will show up here.", maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.bodyLarge!.copyWith(height: 1.50))), SizedBox(height: 21.v), CustomElevatedButton(height: 45.v, text: "Notifications Settings", margin: EdgeInsets.only(left: 37.h, right: 36.h), onPressed: () {onTapNotificationsSettings(context);}), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 64.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeftPrimarycontainer, margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 8.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "Notification"), styleType: Style.bgFill); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the homeContainerScreen when the action is triggered.
onTapNotificationsSettings(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homeContainerScreen); } 
 }
