import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:malooz/core/constant/app_colors.dart';
import 'package:malooz/core/constant/app_icons.dart';
import 'package:malooz/core/constant/app_padding.dart';
import 'package:malooz/core/utls/utls.dart';
import 'package:malooz/features/payment_details/ui/widgets/select_payment_method.dart';

import '../../../../core/constant/app_images.dart';

class PaymentDetailsScreen extends StatelessWidget {
  const PaymentDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = GoogleFonts.urbanist(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Colors.white70
    );
    return Scaffold(
      appBar: Utils.appBar(context: context,title: 'Payment Details'),
      body: Padding(
        padding: AppPadding.horizontal16,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16,),
            Text("Please provide the payment details below",style: textTheme,),
            const SizedBox(height: 13,),
            SelectPaymentMethod(),
            const SizedBox(height: 13,),
            Text("Card Details:",style: textTheme.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: AppColors.white
            ),),
            const SizedBox(height: 12,),
            TextFormField(
              textAlignVertical: TextAlignVertical.center, // Aligns the input text and hintText vertically
              decoration: InputDecoration(
                hintText: 'XXXX - XXXX - XXXX - XXXX',
                hintStyle: textTheme.copyWith(
                  fontWeight: FontWeight.w400,
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 12.0), // Adjust right padding as needed
                  child: ImageIcon(
                    AssetImage(AppIcons.visa),
                    color: AppColors.primaryColor,
                    size: 24,
                  ),
                ),
                suffixIconConstraints: const BoxConstraints(
                  minHeight: 24, // Should be at least the size of your icon
                  minWidth: 24,  // Should be at least the size of your icon
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0), // Adjust padding as needed
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.white6)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.white6)),
              ),
            )



          ],
        ),
      ),
    );
  }
}
