import 'package:hajj_urma/widgets/custom_icon_button.dart';import 'package:hajj_urma/widgets/custom_outlined_button.dart';import 'widgets/addnewpropertydetails_item_widget.dart';import 'package:hajj_urma/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:hajj_urma/core/app_export.dart';class AddNewPropertyDetailsScreen extends StatelessWidget {const AddNewPropertyDetailsScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 24.v), child: Column(children: [SizedBox(height: 9.v), Expanded(child: SingleChildScrollView(child: Container(margin: EdgeInsets.only(bottom: 5.v), padding: EdgeInsets.symmetric(horizontal: 16.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildImageAndDetails(context), SizedBox(height: 32.v), _buildPropertyDetails(context), SizedBox(height: 31.v), _buildAddNewProperty(context), SizedBox(height: 32.v), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("Information", style: CustomTextStyles.titleMediumBold_1)), SizedBox(height: 15.v), _buildAddNewPropertyDetails(context), SizedBox(height: 16.v), _buildRealixEstimate(context), SizedBox(height: 34.v), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("Nearby Properties", style: CustomTextStyles.titleMediumBold_1)), SizedBox(height: 13.v), _buildImg(context), SizedBox(height: 17.v), _buildMightyCincoFamily(context)]))))])), bottomNavigationBar: _buildBTN(context))); } 
/// Section Widget
Widget _buildImageAndDetails(BuildContext context) { return SizedBox(height: 343.adaptSize, width: 343.adaptSize, child: Stack(alignment: Alignment.centerLeft, children: [CustomImageView(imagePath: ImageConstant.imgImage343x343, height: 343.adaptSize, width: 343.adaptSize, radius: BorderRadius.circular(20.h), alignment: Alignment.center), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 24.h, right: 45.h), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomIconButton(height: 40.adaptSize, width: 40.adaptSize, padding: EdgeInsets.all(14.h), decoration: IconButtonStyleHelper.outlineBlue, onTap: () {onTapBtnArrowLeft(context);}, child: CustomImageView(imagePath: ImageConstant.imgArrowLeftPrimarycontainer40x40)), SizedBox(height: 209.v), Text("Primary Apartment", style: CustomTextStyles.headlineSmallWhiteA700), SizedBox(height: 1.v), Text("701 Ocean Avenue, Unit 103, Santa Monica", style: CustomTextStyles.titleSmallGray300)])))])); } 
/// Section Widget
Widget _buildPropertyDetails(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 8.h), child: Row(children: [CustomIconButton(height: 34.adaptSize, width: 34.adaptSize, padding: EdgeInsets.all(7.h), decoration: IconButtonStyleHelper.fillPrimaryTL5, child: CustomImageView(imagePath: ImageConstant.imgIconGray300)), Padding(padding: EdgeInsets.only(left: 8.h), child: _buildBedroomDetails(context, roomName: "Bathroom", roomCount: "2 Rooms")), Container(width: 94.h, margin: EdgeInsets.only(left: 24.h), child: Row(children: [CustomIconButton(height: 34.adaptSize, width: 34.adaptSize, padding: EdgeInsets.all(7.h), decoration: IconButtonStyleHelper.fillPrimaryTL5, child: CustomImageView(imagePath: ImageConstant.imgIconGray30034x34)), Padding(padding: EdgeInsets.only(left: 8.h), child: _buildBedroomDetails(context, roomName: "Bedroom", roomCount: "3 Rooms"))])), Padding(padding: EdgeInsets.only(left: 25.h), child: CustomIconButton(height: 34.adaptSize, width: 34.adaptSize, padding: EdgeInsets.all(7.h), decoration: IconButtonStyleHelper.fillPrimaryTL5, child: CustomImageView(imagePath: ImageConstant.imgIcon34x34))), Padding(padding: EdgeInsets.only(left: 8.h, top: 2.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Square", style: CustomTextStyles.bodySmall10), SizedBox(height: 1.v), Text("1,880 Ft", style: CustomTextStyles.labelLargePrimaryContainerBold)]))])); } 
/// Section Widget
Widget _buildAddNewProperty(BuildContext context) { return CustomOutlinedButton(text: "Add New Property", margin: EdgeInsets.symmetric(horizontal: 8.h), leftIcon: Container(margin: EdgeInsets.only(right: 10.h), child: CustomImageView(imagePath: ImageConstant.imgPlusPrimary, height: 24.adaptSize, width: 24.adaptSize)), buttonStyle: CustomButtonStyles.outlinePrimaryTL10, buttonTextStyle: CustomTextStyles.titleMediumPrimaryBold); } 
/// Section Widget
Widget _buildAddNewPropertyDetails(BuildContext context) { return SizedBox(height: 99.v, child: ListView.separated(padding: EdgeInsets.symmetric(horizontal: 8.h), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 12.h);}, itemCount: 3, itemBuilder: (context, index) {return AddnewpropertydetailsItemWidget();})); } 
/// Section Widget
Widget _buildOneYear(BuildContext context) { return CustomOutlinedButton(height: 32.v, width: 66.h, text: "1 Year", buttonStyle: CustomButtonStyles.outlineBlueGrayTL5, buttonTextStyle: CustomTextStyles.labelLargePrimaryContainer); } 
/// Section Widget
Widget _buildFiftyOneThousand(BuildContext context) { return CustomElevatedButton(height: 24.v, width: 56.h, text: "510.00", buttonStyle: CustomButtonStyles.fillPrimaryContainer, buttonTextStyle: CustomTextStyles.labelMediumSFProDisplayGray300); } 
/// Section Widget
Widget _buildRealixEstimate(BuildContext context) { return Container(margin: EdgeInsets.symmetric(horizontal: 8.h), padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 25.v), decoration: AppDecoration.fillWhiteA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 8.h), child: Text("Relax Estimate", style: CustomTextStyles.labelLargeSemiBold)), SizedBox(height: 8.v), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("6,345.00", style: theme.textTheme.headlineSmall)), SizedBox(height: 21.v), Padding(padding: EdgeInsets.only(left: 8.h), child: Row(children: [_buildOneYear(context), Padding(padding: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 6.v), child: Text("5 Years", style: theme.textTheme.labelLarge))])), SizedBox(height: 24.v), Row(children: [Expanded(child: Column(children: [Padding(padding: EdgeInsets.only(left: 3.h, right: 2.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 150.v, width: 249.h, child: Stack(alignment: Alignment.centerLeft, children: [Align(alignment: Alignment.centerLeft, child: SizedBox(height: 147.v, child: VerticalDivider(width: 1.h, thickness: 1.v))), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 42.h), child: SizedBox(height: 147.v, child: VerticalDivider(width: 1.h, thickness: 1.v)))), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 83.h), child: SizedBox(height: 147.v, child: VerticalDivider(width: 1.h, thickness: 1.v)))), Align(alignment: Alignment.center, child: SizedBox(height: 147.v, child: VerticalDivider(width: 1.h, thickness: 1.v))), Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(right: 80.h), child: SizedBox(height: 147.v, child: VerticalDivider(width: 1.h, thickness: 1.v)))), Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(right: 39.h), child: SizedBox(height: 147.v, child: VerticalDivider(width: 1.h, thickness: 1.v)))), Align(alignment: Alignment.center, child: Container(padding: EdgeInsets.symmetric(horizontal: 58.h, vertical: 12.v), decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImageConstant.imgGroup4), fit: BoxFit.cover)), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.end, children: [_buildFiftyOneThousand(context), SizedBox(height: 52.v), Container(height: 49.v, width: 8.h, margin: EdgeInsets.only(right: 24.h), child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(right: 3.h), child: SizedBox(height: 48.v, child: VerticalDivider(width: 1.h, thickness: 1.v, color: theme.colorScheme.primary)))), Align(alignment: Alignment.bottomCenter, child: Container(height: 8.adaptSize, width: 8.adaptSize, decoration: BoxDecoration(color: appTheme.gray300, borderRadius: BorderRadius.circular(4.h), border: Border.all(color: theme.colorScheme.primary, width: 2.h))))]))])))])), SizedBox(height: 150.v, child: VerticalDivider(width: 1.h, thickness: 1.v, endIndent: 3.h))])), SizedBox(height: 10.v), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("S", style: CustomTextStyles.bodySmallSFProDisplay), Text("M", style: CustomTextStyles.bodySmallSFProDisplay), Text("T", style: CustomTextStyles.bodySmallSFProDisplay), Text("W", style: CustomTextStyles.bodySmallSFProDisplay), Text("T", style: CustomTextStyles.labelLargeSFProDisplayPrimary), Text("F", style: CustomTextStyles.bodySmallSFProDisplay), Text("S", style: CustomTextStyles.bodySmallSFProDisplay)])])), Padding(padding: EdgeInsets.only(left: 17.h, top: 5.v, bottom: 5.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("4k", style: CustomTextStyles.bodySmallSFProDisplay), SizedBox(height: 35.v), Text("3k", style: CustomTextStyles.bodySmallSFProDisplay), SizedBox(height: 34.v), Text("2k", style: CustomTextStyles.bodySmallSFProDisplay), SizedBox(height: 35.v), Text("1", style: CustomTextStyles.bodySmallSFProDisplay)]))])])); } 
/// Section Widget
Widget _buildImg(BuildContext context) { return Container(height: 180.v, width: 327.h, margin: EdgeInsets.only(left: 8.h), child: Stack(alignment: Alignment.topRight, children: [CustomImageView(imagePath: ImageConstant.imgImg, height: 180.v, width: 327.h, radius: BorderRadius.circular(10.h), alignment: Alignment.center), Padding(padding: EdgeInsets.only(top: 16.v, right: 16.h), child: CustomIconButton(height: 36.adaptSize, width: 36.adaptSize, padding: EdgeInsets.all(8.h), decoration: IconButtonStyleHelper.outlineGrayTL18, alignment: Alignment.topRight, child: CustomImageView(imagePath: ImageConstant.imgFavorite)))])); } 
/// Section Widget
Widget _buildMightyCincoFamily(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 8.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Mighty Cinco Family", style: theme.textTheme.titleMedium), SizedBox(height: 9.v), Row(children: [CustomImageView(imagePath: ImageConstant.imgIconMapPin, height: 14.adaptSize, width: 14.adaptSize, margin: EdgeInsets.only(bottom: 2.v)), Padding(padding: EdgeInsets.only(left: 4.h), child: Text("Jakarta, Indonesia", style: CustomTextStyles.bodySmallPrimaryContainer))])]), Column(children: [Align(alignment: Alignment.centerRight, child: Text("Price", style: theme.textTheme.bodySmall)), SizedBox(height: 10.v), Text("436", style: CustomTextStyles.titleMediumPrimary_1)])])); } 
/// Section Widget
Widget _buildContactAgent(BuildContext context) { return CustomElevatedButton(text: "Contact Agent"); } 
/// Section Widget
Widget _buildBTN(BuildContext context) { return Container(margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), decoration: AppDecoration.outlineBlueGrayF, child: _buildContactAgent(context)); } 
/// Common widget
Widget _buildBedroomDetails(BuildContext context, {required String roomName, required String roomCount, }) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(roomName, style: CustomTextStyles.bodySmall10.copyWith(color: appTheme.blueGray500)), SizedBox(height: 1.v), Text(roomCount, style: CustomTextStyles.labelLargePrimaryContainerBold.copyWith(color: theme.colorScheme.primaryContainer))]); } 

/// Navigates back to the previous screen.
onTapBtnArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
