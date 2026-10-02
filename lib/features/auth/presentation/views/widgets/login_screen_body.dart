import 'package:ecommerceapp/core/utils/app_colors.dart';
import 'package:ecommerceapp/core/utils/app_strings.dart';
import 'package:ecommerceapp/core/utils/app_styles.dart';
import 'package:ecommerceapp/core/utils/validators.dart';
import 'package:ecommerceapp/core/routing/routes.dart';
import 'package:ecommerceapp/features/auth/presentation/views/widgets/auth_header_widget.dart';
import 'package:ecommerceapp/features/auth/presentation/views/widgets/custom_elevated_button.dart';
import 'package:ecommerceapp/features/auth/presentation/views/widgets/forget_password_widget.dart';
import 'package:ecommerceapp/features/auth/presentation/views/widgets/vaildation_widget.dart';
import 'package:ecommerceapp/features/auth/presentation/views/widgets/welcome_route_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    final formKey = GlobalKey<FormState>();
    return SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      padding: const EdgeInsets.only(bottom: 24),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AuthHeaderWidget(),
            SizedBox(height: height * .11),
            WelcomeRouteWidget(),
            SizedBox(height: height * .05),
            ValidationWidget(
              label: AppStrings.userName,
              hintText: AppStrings.enterName,
              validator: Validators.userName,
              keyboardType: TextInputType.name,
            ),
            SizedBox(height: height * .04),
            ValidationWidget(
              label: AppStrings.password,
              hintText: AppStrings.enterPassword,
              validator: Validators.password,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.visibility_off, color: AppColors.lightGrey),
              ),
            ),
            ForgetPasswordWidget(),
            SizedBox(height: height * .05),
            CustomElevatedButton(
              text: AppStrings.login,
              onPressed: () {
                formKey.currentState?.validate();
              },
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppStrings.noAccountPrompt,
                  style: AppStyles.textStyle18MediumBlack.copyWith(
                    color: AppColors.onPrimary,
                  ),
                ),
                TextButton(
                  onPressed: () => context.pushNamed(Routes.signupRoute),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: Text(
                    AppStrings.createAccount,
                    style: AppStyles.textStyle18MediumBlack.copyWith(
                      color: AppColors.onPrimary,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
