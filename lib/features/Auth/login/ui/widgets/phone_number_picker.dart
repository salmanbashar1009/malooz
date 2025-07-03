import 'package:flutter/material.dart';

class PhoneNumberPicker extends StatefulWidget {
  const PhoneNumberPicker({super.key});

  @override
  _PhoneNumberPickerState createState() => _PhoneNumberPickerState();
}

class _PhoneNumberPickerState extends State<PhoneNumberPicker> {
  final List<Map<String, String>> countries = [
    {"code": "+1", "name": "US"},
    {"code": "+44", "name": "UK"},
    {"code": "+91", "name": "IN"},
    {"code": "+61", "name": "AU"},
    {"code": "+81", "name": "JP"},
    // Add more countries as needed
  ];

  String selectedCode = "+1";
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: selectedCode,
            onChanged: (value) {
              setState(() {
                selectedCode = value!;
              });
            },
            items: countries.map((country) {
              return DropdownMenuItem<String>(
                value: country["code"],
                child: Row(
                  children: [
                    Text(
                      country["name"]!,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(width: 5),
                    Text(
                      country["code"]!,
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: TextField(
            controller: phoneController,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Enter Phone",
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
        ),
      ],
    );
  }
}
