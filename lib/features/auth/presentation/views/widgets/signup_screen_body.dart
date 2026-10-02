import 'package:ecommerceapp/core/utils/app_colors.dart';
import 'package:ecommerceapp/core/utils/app_strings.dart';
import 'package:ecommerceapp/core/utils/validators.dart';
import 'package:ecommerceapp/features/auth/presentation/views/widgets/auth_header_widget.dart';
import 'package:ecommerceapp/features/auth/presentation/views/widgets/custom_elevated_button.dart';
import 'package:ecommerceapp/features/auth/presentation/views/widgets/vaildation_widget.dart';
import 'package:flutter/material.dart';

class SignupScreenBody extends StatefulWidget {
  const SignupScreenBody({super.key});

  @override
  State<SignupScreenBody> createState() => _SignupScreenBodyState();
}

class _SignupScreenBodyState extends State<SignupScreenBody> {
  final formKey = GlobalKey<FormState>();
  bool isSecure = true;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      padding: const EdgeInsets.only(bottom: 89),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AuthHeaderWidget(),
            SizedBox(height: height * .11),
            ValidationWidget(
              label: AppStrings.userName,
              hintText: AppStrings.enterName,
              validator: Validators.userName,
              keyboardType: TextInputType.name,
            ),
            SizedBox(height: height * .04),
            ValidationWidget(
              label: AppStrings.mobileNumber,
              hintText: AppStrings.enterMobileNumber,
              validator: Validators.mobileNumber,
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: height * .04),
            ValidationWidget(
              label: AppStrings.emailAddress,
              hintText: AppStrings.enterEmail,
              validator: Validators.email,
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: height * .04),
            ValidationWidget(
              label: AppStrings.password,
              hintText: AppStrings.enterPassword,
              validator: Validators.password,
              keyboardType: TextInputType.visiblePassword,
              obscureText: !isSecure,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isSecure = !isSecure;
                  });
                },
                icon: Icon(
                  isSecure ? Icons.visibility_off : Icons.visibility,
                  color: AppColors.lightGrey,
                ),
              ),
            ),
            SizedBox(height: height * .05),
            CustomElevatedButton(
              text: AppStrings.signUp,
              onPressed: () {
                formKey.currentState?.validate();
              },
            ),
          ],
        ),
      ),
    );
  }
}
