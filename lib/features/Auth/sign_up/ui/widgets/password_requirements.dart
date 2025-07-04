import 'package:flutter/material.dart';

class PasswordRequirements extends StatelessWidget {
  final List<String> requirements = [
    "8 characters in length",
    "1 uppercase letter",
    "1 lowercase letter",
    "1 number",
    "1 special character",
  ];

   PasswordRequirements({super.key});

  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: requirements.map((req) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.check_circle, color: Colors.green, size: 18),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  req,
                  style: textTheme.bodySmall?.copyWith(color: Colors.white)
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
