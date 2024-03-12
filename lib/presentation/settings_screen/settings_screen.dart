import 'package:hajj_urma/widgets/app_bar/custom_app_bar.dart';import 'package:hajj_urma/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:hajj_urma/widgets/app_bar/appbar_subtitle_two.dart';import 'package:hajj_urma/widgets/custom_switch.dart';import 'package:flutter/material.dart';import 'package:hajj_urma/core/app_export.dart';
// ignore_for_file: must_be_immutable
class SettingsScreen extends StatelessWidget {SettingsScreen({Key? key}) : super(key: key);

bool isSelectedSwitch = false;

bool isSelectedSwitch1 = false;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 26.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Application Settings", style: CustomTextStyles.titleSmallBluegray500), SizedBox(height: 14.v), _buildNotificationRow(context), SizedBox(height: 16.v), Divider(), SizedBox(height: 15.v), _buildDarkModeRow(context), SizedBox(height: 16.v), Divider(), SizedBox(height: 15.v), _buildCountryRow(context, countryName: "Language", selectedCountry: "English"), SizedBox(height: 16.v), Divider(), SizedBox(height: 15.v), _buildCountryRow(context, countryName: "Country", selectedCountry: "US"), SizedBox(height: 33.v), Text("Support", style: CustomTextStyles.titleSmallBluegray500), SizedBox(height: 14.v), _buildPrivacyPolicyRow(context, privacyPolicyText: "Terms of use"), SizedBox(height: 16.v), Divider(), SizedBox(height: 15.v), _buildPrivacyPolicyRow(context, privacyPolicyText: "Privacy Policy"), SizedBox(height: 14.v), Divider(), SizedBox(height: 15.v), _buildPrivacyPolicyRow(context, privacyPolicyText: "About"), SizedBox(height: 15.v), Divider(), SizedBox(height: 15.v), _buildPrivacyPolicyRow(context, privacyPolicyText: "FAQs"), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 64.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeftPrimarycontainer, margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 8.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "Settings"), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildNotificationRow(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 2.v, bottom: 1.v), child: Text("Notification", style: theme.textTheme.titleSmall)), CustomSwitch(value: isSelectedSwitch, onChange: (value) {isSelectedSwitch = value;})]); } 
/// Section Widget
Widget _buildDarkModeRow(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 2.v, bottom: 1.v), child: Text("Dark Mode", style: theme.textTheme.titleSmall)), CustomSwitch(value: isSelectedSwitch1, onChange: (value) {isSelectedSwitch1 = value;})]); } 
/// Common widget
Widget _buildCountryRow(BuildContext context, {required String countryName, required String selectedCountry, }) { return Row(children: [Padding(padding: EdgeInsets.only(top: 2.v), child: Text(countryName, style: theme.textTheme.titleSmall!.copyWith(color: theme.colorScheme.primaryContainer))), Spacer(), Text(selectedCountry, style: CustomTextStyles.titleSmallBluegray500_1.copyWith(color: appTheme.blueGray500)), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(left: 4.h, bottom: 2.v))]); } 
/// Common widget
Widget _buildPrivacyPolicyRow(BuildContext context, {required String privacyPolicyText, }) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 2.v), child: Text(privacyPolicyText, style: theme.textTheme.titleSmall!.copyWith(color: theme.colorScheme.primaryContainer))), CustomImageView(imagePath: ImageConstant.imgArrowRightBlueGray500, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(bottom: 2.v))]); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the faqsGetHelpScreen when the action is triggered.
onTapPrivacyPolicyRow(BuildContext context) { Navigator.pushNamed(context, AppRoutes.faqsGetHelpScreen); } 
 }
