import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:malooz/core/constant/app_colors.dart';
import 'package:malooz/core/constant/app_icons.dart';
import 'package:malooz/core/constant/app_padding.dart';
import 'package:malooz/core/utls/utls.dart';
import 'package:malooz/features/common/common_widgets/success_alert_dialog_sheet.dart';
import 'package:malooz/features/payment_details/ui/widgets/select_payment_method.dart';

class PaymentDetailsScreen extends StatelessWidget {
  const PaymentDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = GoogleFonts.urbanist(
        fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white70);
    return Scaffold(
      appBar: Utils.appBar(context: context, title: 'Payment Details'),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPadding.horizontal16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16,
              ),
              Text(
                "Please provide the payment details below",
                style: textTheme,
              ),
              const SizedBox(
                height: 13,
              ),
              SelectPaymentMethod(),
              const SizedBox(
                height: 13,
              ),

              /// Card Details Section
              Text(
                "Card Details:",
                style: textTheme.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: AppColors.white),
              ),
              const SizedBox(
                height: 12,
              ),
              buildTextFormField(
                  hintText: 'XXXX - XXXX - XXXX - XXXX',
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    // Adjust right padding as needed
                    child: ImageIcon(
                      AssetImage(AppIcons.visa),
                      color: AppColors.primaryColor,
                      size: 24,
                    ),
                  )),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Expanded(
                    child: buildTextFormField(hintText: 'Expiry Date'),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: buildTextFormField(hintText: 'CVV'),
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),

              /// Card holder Details Section
              Text(
                "Card Holder Details:",
                style: textTheme.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: AppColors.white),
              ),
              const SizedBox(
                height: 12,
              ),
              buildTextFormField(hintText: 'Card Holder Name'),
              const SizedBox(
                height: 8,
              ),
              buildTextFormField(hintText: 'Billing address:'),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Expanded(
                    child: buildTextFormField(hintText: 'City'),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: buildTextFormField(hintText: 'Country'),
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              buildTextFormField(hintText: 'If any Note:', maxLine: 3),
              const SizedBox(
                height: 40,
              ),
              Utils.primaryButton(
                  title: "Continue",
                  onPressed: () async {
                    await showSuccessAlertDialogSheet(
                        context: context,
                        message:
                            'You have successfully Subscribed\n1 month premium. Enjoy the benefit!');
                  }),
              const SizedBox(
                height: 32,
              )
            ],
          ),
        ),
      ),
    );
  }

  TextFormField buildTextFormField(
      {String? hintText,
      TextEditingController? controller,
      int? maxLine,
      Widget? suffixIcon}) {
    final textTheme = GoogleFonts.urbanist(
        fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white70);
    return TextFormField(
      controller: controller,
      maxLines: maxLine,
      textAlignVertical: TextAlignVertical.center,
      // Aligns the input text and hintText vertically
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: textTheme.copyWith(
            fontWeight: FontWeight.w400, color: AppColors.white60),
        suffixIcon: suffixIcon,
        suffixIconConstraints: const BoxConstraints(
          minHeight: 24, // Should be at least the size of your icon
          minWidth: 24, // Should be at least the size of your icon
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
        // Adjust padding as needed
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColors.white6)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColors.white6)),
      ),
    );
  }
}
