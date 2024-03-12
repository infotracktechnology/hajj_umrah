import 'package:hajj_urma/widgets/app_bar/custom_app_bar.dart';import 'package:hajj_urma/widgets/app_bar/appbar_subtitle.dart';import 'package:hajj_urma/widgets/custom_text_form_field.dart';import 'package:hajj_urma/widgets/custom_elevated_button.dart';import 'package:hajj_urma/widgets/custom_outlined_button.dart';import 'package:flutter/material.dart';import 'package:hajj_urma/core/app_export.dart';
// ignore_for_file: must_be_immutable
class SignInScreen extends StatelessWidget {SignInScreen({Key? key}) : super(key: key);

TextEditingController phoneNumberController = TextEditingController();

TextEditingController passwordController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Text("Sign in to your account", style: theme.textTheme.bodyLarge)), SizedBox(height: 38.v), _buildPhoneNumber(context), SizedBox(height: 16.v), _buildPassword(context), SizedBox(height: 24.v), _buildSignIn(context), SizedBox(height: 26.v), Text("Forgot password?", style: CustomTextStyles.titleSmallBluegray500_1), Spacer(), Text("Or continue with social account", style: theme.textTheme.bodyLarge), SizedBox(height: 24.v), _buildGoogle(context), SizedBox(height: 12.v), _buildFacebook(context), SizedBox(height: 25.v), Padding(padding: EdgeInsets.symmetric(horizontal: 41.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("Don’t have an account?", style: theme.textTheme.bodyLarge)), GestureDetector(onTap: () {onTapTxtSignUp(context);}, child: Padding(padding: EdgeInsets.only(left: 4.h), child: Text("Sign Up", style: CustomTextStyles.titleMediumPrimary)))])), SizedBox(height: 60.v)]))))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(title: AppbarSubtitle(text: "Welcome Back!", margin: EdgeInsets.only(left: 24.h))); } 
/// Section Widget
Widget _buildPhoneNumber(BuildContext context) { return CustomTextFormField(controller: phoneNumberController, hintText: "Phone number", textInputType: TextInputType.phone); } 
/// Section Widget
Widget _buildPassword(BuildContext context) { return CustomTextFormField(controller: passwordController, hintText: "Password", textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 14.v, 14.h, 14.v), child: CustomImageView(imagePath: ImageConstant.imgEye, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 49.v), obscureText: true, contentPadding: EdgeInsets.only(left: 14.h, top: 14.v, bottom: 14.v)); } 
/// Section Widget
Widget _buildSignIn(BuildContext context) { return CustomElevatedButton(text: "Sign In"); } 
/// Section Widget
Widget _buildGoogle(BuildContext context) { return CustomOutlinedButton(text: "Google", leftIcon: Container(margin: EdgeInsets.only(right: 12.h), child: CustomImageView(imagePath: ImageConstant.imgGoogle, height: 24.adaptSize, width: 24.adaptSize))); } 
/// Section Widget
Widget _buildFacebook(BuildContext context) { return CustomOutlinedButton(text: "Facebook", leftIcon: Container(margin: EdgeInsets.only(right: 12.h), child: CustomImageView(imagePath: ImageConstant.imgFacebook, height: 24.adaptSize, width: 24.adaptSize))); } 
/// Navigates to the signUpScreen when the action is triggered.
onTapTxtSignUp(BuildContext context) { Navigator.pushNamed(context, AppRoutes.signUpScreen); } 
 }
