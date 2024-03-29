import 'package:hajj_urma/widgets/app_bar/custom_app_bar.dart';import 'package:hajj_urma/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:hajj_urma/widgets/app_bar/appbar_subtitle_two.dart';import 'package:hajj_urma/widgets/custom_elevated_button.dart';import '../add_new_property_select_amenities_screen/widgets/options_item_widget.dart';import 'package:flutter/material.dart';import 'package:hajj_urma/core/app_export.dart';class AddNewPropertySelectAmenitiesScreen extends StatelessWidget {const AddNewPropertySelectAmenitiesScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.all(24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildAddressAndProgress(context), SizedBox(height: 16.v), _buildProgressBar(context), SizedBox(height: 24.v), Text("Select Amenities", style: CustomTextStyles.titleMediumBold_1), SizedBox(height: 15.v), _buildOptions(context), SizedBox(height: 5.v)])), bottomNavigationBar: _buildBtn(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 64.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeftPrimarycontainer, margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 8.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "Add New Property"), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildAddressAndProgress(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.symmetric(vertical: 6.v), child: Text("Select Amenities", style: theme.textTheme.titleSmall)), CustomElevatedButton(height: 33.v, width: 79.h, text: "08 / 08", buttonStyle: CustomButtonStyles.fillPrimaryTL16, buttonTextStyle: CustomTextStyles.titleSmallWhiteA700)]); } 
/// Section Widget
Widget _buildProgressBar(BuildContext context) { return SizedBox(height: 6.v, width: 327.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.center, child: SizedBox(width: 327.h, child: Divider(color: appTheme.gray300))), Align(alignment: Alignment.center, child: SizedBox(width: 327.h, child: Divider(color: theme.colorScheme.primary)))])); } 
/// Section Widget
Widget _buildOptions(BuildContext context) { return Wrap(runSpacing: 8.v, spacing: 8.h, children: List<Widget>.generate(8, (index) => OptionsItemWidget())); } 
/// Section Widget
Widget _buildBtn(BuildContext context) { return Container(margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), decoration: AppDecoration.outlineBlueGrayF, child: CustomElevatedButton(text: "Next", onPressed: () {onTapNext(context);})); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the addNewPropertyDetailsScreen when the action is triggered.
onTapNext(BuildContext context) { Navigator.pushNamed(context, AppRoutes.addNewPropertyDetailsScreen); } 
 }
