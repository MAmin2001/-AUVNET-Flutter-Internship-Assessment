import 'package:auvnet_e_commerce_task/core/helpers/app_regex.dart';
import 'package:auvnet_e_commerce_task/core/helpers/extinstions.dart';
import 'package:auvnet_e_commerce_task/core/helpers/spacing.dart';
import 'package:auvnet_e_commerce_task/core/routing/routes.dart';
import 'package:auvnet_e_commerce_task/core/themeing/colors_manager.dart';
import 'package:auvnet_e_commerce_task/core/themeing/fonts_manager.dart';
import 'package:auvnet_e_commerce_task/core/widgets/custom_app_text_button.dart';
import 'package:auvnet_e_commerce_task/core/widgets/custom_white_text_button.dart';
import 'package:auvnet_e_commerce_task/core/widgets/logo_circle_image.dart';
import 'package:auvnet_e_commerce_task/features/auth/logic/bloc/auth_bloc.dart';
import 'package:auvnet_e_commerce_task/features/auth/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  final formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController passwordConfirm = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LogoCircleImage(),
                  verticalSpace(4),
                  CustomTextFormField(
                    controller: email,
                    hint: 'mail',
                    prefixIcon: Icons.mail_outline_sharp,
                    textInputType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          !AppRegex.isEmailValid(value)) {
                        return 'Please enter a valid password';
                      }
                    },
                  ),
                  verticalSpace(18),
                  CustomTextFormField(
                    controller: password,
                    hint: 'password',
                    prefixIcon: Icons.lock_outline,
                    textInputType: TextInputType.visiblePassword,
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          !AppRegex.isPasswordValid(value)) {
                        return 'Please enter a valid password';
                      }
                    },
                  ),
                  verticalSpace(18),
                  CustomTextFormField(
                    controller: passwordConfirm,
                    hint: 'password',
                    prefixIcon: Icons.lock_outline,
                    textInputType: TextInputType.visiblePassword,
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          !AppRegex.isPasswordValid(value)) {
                        return 'Please enter a valid password';
                      }
                    },
                  ),
                  verticalSpace(26),
                  BlocConsumer<AuthBloc, AuthState>(
                    listener: (BuildContext context, AuthState state) {
                      if (state is RegisterError) {
                        print('error');
                      } else if (state is RegisterSuccess) {
                        context.pushNamedAndRemoveUntil(
                          Routes.layoutRoute,
                          predicate: (Route<dynamic> route) => false,
                        );
                      }
                    },
                    builder: (context, state) {
                      return state is RegisterLoading
                          ? Center(child: CircularProgressIndicator())
                          : Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: CustomAppTextButton(
                              text: 'Sign Up',
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  context.read<AuthBloc>().add(
                                    RegisterEvent(
                                      email: email.text.trim(),
                                      password: password.text.trim(),
                                    ),
                                  );
                                }
                              },
                            ),
                          );
                    },
                  ),
                  verticalSpace(16),
                  CustomTransparentTextButton(
                    text: 'Sign In',
                    color: ColorsManager.blueColor,
                    fontWeight: FontWeightManager.semiBold,
                    onPressed: () {
                      context.pushReplacementNamed(Routes.loginRoute);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
