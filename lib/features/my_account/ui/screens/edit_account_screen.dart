import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:malooz/core/constant/app_padding.dart';
import 'package:malooz/features/my_account/ui/widgets/profile_avatar.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/utls/utls.dart';

class EditAccountScreen extends StatelessWidget {
  const EditAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Utils.backButton(onTap: (){
          Navigator.pop(context);
        }),
      ),
      body: Padding(
        padding: AppPadding.horizontal16,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 12,
            children: [
              ProfileAvatar(),
              const SizedBox(height: 5,),
              buildTextField(context: context, title: 'Full Name', hintText: 'Your Full Name'),
              buildTextField(context: context, title: 'Gender', hintText: 'Select Your Gender'),
              buildTextField(context: context, title: 'Email Address', hintText: 'Your Email here'),
              buildTextField(context: context, title: 'Phone Number', hintText: 'Phone Number'),
              buildTextField(context: context, title: 'Country', hintText: 'Select Your Country'),
              buildTextField(context: context, title: 'Change Password', hintText: '********',isSuffixIcon: true),
              const SizedBox(height: 35,),
              Utils.primaryButton(title: 'Update', onPressed: (){}),
              const SizedBox(height: 35,),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField({required BuildContext context, required String hintText, required String title,bool? isSuffixIcon = false}) {
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: AppColors.white80
              ),),
              const SizedBox(height: 10,),
              TextFormField(
                cursorColor: AppColors.white40,
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: Theme.of(context).textTheme.bodyMedium,
                  fillColor: Color(0xFF292826),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5)
                  ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  suffixIcon: isSuffixIcon == true ? Icon(Icons.visibility_outlined,color: AppColors.whiteGrey,) : null
                ),
              )

            ],
          );
  }
}
