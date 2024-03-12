import 'package:hajj_urma/widgets/app_bar/custom_app_bar.dart';import 'package:hajj_urma/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:hajj_urma/widgets/app_bar/appbar_subtitle_two.dart';import 'package:hajj_urma/widgets/custom_elevated_button.dart';import 'package:hajj_urma/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';import 'package:hajj_urma/core/app_export.dart';
// ignore_for_file: must_be_immutable
class AddNewPropertyDecsriptionScreen extends StatelessWidget {AddNewPropertyDecsriptionScreen({Key? key}) : super(key: key);

TextEditingController addressController = TextEditingController();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.all(24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildAddressAndProgress(context), SizedBox(height: 16.v), Container(height: 6.v, width: 327.h, decoration: BoxDecoration(color: appTheme.gray300, borderRadius: BorderRadius.circular(3.h)), child: ClipRRect(borderRadius: BorderRadius.circular(3.h), child: LinearProgressIndicator(value: 0.62, backgroundColor: appTheme.gray300, valueColor: AlwaysStoppedAnimation<Color>(theme.colorScheme.primary)))), SizedBox(height: 26.v), Text("Property Address", style: CustomTextStyles.titleMediumBold_1), SizedBox(height: 13.v), CustomTextFormField(controller: addressController, hintText: "Tell us about your home here", textInputAction: TextInputAction.done), SizedBox(height: 5.v)])), bottomNavigationBar: _buildBtn(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 64.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeftPrimarycontainer, margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 8.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "Add New Property"), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildAddressAndProgress(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 8.v, bottom: 4.v), child: Text("Description", style: theme.textTheme.titleSmall)), CustomElevatedButton(height: 33.v, width: 79.h, text: "05 / 08", buttonStyle: CustomButtonStyles.fillPrimaryTL16, buttonTextStyle: CustomTextStyles.titleSmallWhiteA700)]); } 
/// Section Widget
Widget _buildBtn(BuildContext context) { return Container(margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), decoration: AppDecoration.outlineBlueGrayF, child: CustomElevatedButton(text: "Next", onPressed: () {onTapNext(context);})); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the addNewPropertyHomeFactsScreen when the action is triggered.
onTapNext(BuildContext context) { Navigator.pushNamed(context, AppRoutes.addNewPropertyHomeFactsScreen); } 
 }
