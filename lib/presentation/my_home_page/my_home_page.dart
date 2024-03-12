import 'package:hajj_urma/widgets/app_bar/custom_app_bar.dart';import 'package:hajj_urma/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:hajj_urma/widgets/app_bar/appbar_subtitle_two.dart';import 'widgets/propertylist_item_widget.dart';import 'package:hajj_urma/widgets/custom_outlined_button.dart';import 'package:flutter/material.dart';import 'package:hajj_urma/core/app_export.dart';class MyHomePage extends StatelessWidget {const MyHomePage({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.all(24.h), child: Column(children: [_buildPropertyList(context), SizedBox(height: 24.v), CustomOutlinedButton(text: "Add New Property", leftIcon: Container(margin: EdgeInsets.only(right: 10.h), child: CustomImageView(imagePath: ImageConstant.imgPlusPrimary, height: 24.adaptSize, width: 24.adaptSize)), buttonStyle: CustomButtonStyles.outlinePrimaryTL10, buttonTextStyle: CustomTextStyles.titleMediumPrimaryBold, onPressed: () {onTapAddNewProperty(context);}), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 64.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeftPrimarycontainer, margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 8.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "My Home"), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildPropertyList(BuildContext context) { return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: 3, itemBuilder: (context, index) {return PropertylistItemWidget(onTapProperty: () {onTapProperty(context);});}); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the productDetailsScreen when the action is triggered.
onTapProperty(BuildContext context) { Navigator.pushNamed(context, AppRoutes.productDetailsScreen); } 
/// Navigates to the addNewPropertyAddressScreen when the action is triggered.
onTapAddNewProperty(BuildContext context) { Navigator.pushNamed(context, AppRoutes.addNewPropertyAddressScreen); } 
 }
