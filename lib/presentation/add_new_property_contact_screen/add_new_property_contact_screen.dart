import 'package:hajj_urma/widgets/app_bar/custom_app_bar.dart';import 'package:hajj_urma/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:hajj_urma/widgets/app_bar/appbar_subtitle_two.dart';import 'package:hajj_urma/widgets/custom_elevated_button.dart';import 'package:hajj_urma/widgets/custom_phone_number.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/country_pickers.dart';import 'package:flutter/material.dart';import 'package:hajj_urma/core/app_export.dart';
// ignore_for_file: must_be_immutable
class AddNewPropertyContactScreen extends StatelessWidget {AddNewPropertyContactScreen({Key? key}) : super(key: key);

Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91');

TextEditingController phoneNumberController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.all(24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildAddressAndProgress(context), SizedBox(height: 16.v), Container(height: 6.v, width: 327.h, decoration: BoxDecoration(color: appTheme.gray300, borderRadius: BorderRadius.circular(3.h)), child: ClipRRect(borderRadius: BorderRadius.circular(3.h), child: LinearProgressIndicator(value: 0.87, backgroundColor: appTheme.gray300, valueColor: AlwaysStoppedAnimation<Color>(theme.colorScheme.primary)))), SizedBox(height: 26.v), Text("Tell us a little about yourself", style: CustomTextStyles.titleMediumBold_1), SizedBox(height: 13.v), _buildPhoneNumber(context), SizedBox(height: 11.v), _buildButton1(context), SizedBox(height: 5.v)]))))), bottomNavigationBar: _buildColumn(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 64.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeftPrimarycontainer, margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 8.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "Add New Property"), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildButton(BuildContext context) { return CustomElevatedButton(height: 33.v, width: 79.h, text: "07 / 08", buttonStyle: CustomButtonStyles.fillPrimaryTL16, buttonTextStyle: CustomTextStyles.titleSmallWhiteA700); } 
/// Section Widget
Widget _buildAddressAndProgress(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.symmetric(vertical: 6.v), child: Text("Contact", style: theme.textTheme.titleSmall)), _buildButton(context)]); } 
/// Section Widget
Widget _buildPhoneNumber(BuildContext context) { return CustomPhoneNumber(country: selectedCountry, controller: phoneNumberController, onTap: (Country value) {selectedCountry = value;}); } 
/// Section Widget
Widget _buildButton1(BuildContext context) { return CustomElevatedButton(height: 49.v, text: "Is there anything else we should know?", buttonStyle: CustomButtonStyles.fillGray, buttonTextStyle: CustomTextStyles.titleSmallBluegray500Medium); } 
/// Section Widget
Widget _buildButton2(BuildContext context) { return CustomElevatedButton(text: "Next", onPressed: () {onTapButton(context);}); } 
/// Section Widget
Widget _buildColumn(BuildContext context) { return Container(margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), decoration: AppDecoration.outlineBlueGrayF, child: _buildButton2(context)); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the addNewPropertySelectAmenitiesScreen when the action is triggered.
onTapButton(BuildContext context) { Navigator.pushNamed(context, AppRoutes.addNewPropertySelectAmenitiesScreen); } 
 }
