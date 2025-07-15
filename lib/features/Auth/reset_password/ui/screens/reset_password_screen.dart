import 'package:flutter/material.dart';
import 'package:malooz/core/constant/app_colors.dart';
import 'package:malooz/core/constant/app_padding.dart';
import 'package:malooz/features/Auth/shared_widgets/password_input_field.dart';
import '../../../../../core/constant/app_images.dart';
import '../../../../../core/utls/utls.dart';
import '../../../../common/common_widgets/success_alert_dialog_sheet.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
        appBar: Utils.appBar(
            context: context,
            title: "Create New Password",
            isTitleCenter: false),
        body: Padding(
          padding: AppPadding.horizontal16,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 40,
            ),
            Align(
                alignment: Alignment.center,
                child: Image.asset(
                  AppImages.forgotPassword,
                  width: 95,
                  height: 95,
                )),
            const SizedBox(
              height: 58,
            ),
            Text(
              "Create new Password",
              style: textTheme.bodyMedium?.copyWith(color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            PasswordInputField(
              label: "New Password",
            ),
            const SizedBox(
              height: 12,
            ),
            PasswordInputField(
              label: "Confirm Password",
            ),
            const SizedBox(
              height: 14,
            ),
            Wrap(
              children: [
                const Icon(
                  Icons.check_box,
                  color: AppColors.primaryColor,
                  size: 20,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  "Remember me",
                  style: textTheme.bodyMedium?.copyWith(
                      color: AppColors.white, fontWeight: FontWeight.w500),
                )
              ],
            ),
            const Spacer(),
            Utils.primaryButton(
                title: "Continue",
                onPressed: () async {
                  await showSuccessAlertDialogSheet(
                      context: context,
                      message:
                          "Your account ready to use. You will be redirect to the home page automatically within few secouds.");
                }),
            const SizedBox(
              height: 75,
            )
          ]),
        ));
  }
}
