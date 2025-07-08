import 'package:flutter/material.dart';
import 'package:malooz/core/constant/app_colors.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title:  Text(
          'Settings',
          style: textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.w700
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          const SizedBox(height: 20),
          _buildSettingsItem(context,Icons.person, 'Account Settings'),
          _buildSettingsItem(context,Icons.notifications, 'Notifications'),
          _buildSettingsItem(context,Icons.dark_mode, 'Dark Mood'),
          _buildSettingsItem(context, Icons.subscriptions, 'Subscription Management'),
          _buildSettingsItem(context,Icons.credit_card, 'Payment Management'),
          _buildSettingsItem(context,Icons.star_rate, 'Rate the App'),
          _buildSettingsItem(context,Icons.link, 'Affiliate Program'),
          _buildSettingsItem(context,Icons.share, 'Share App'),
          const SizedBox(height: 110),
           Align(
             alignment: Alignment.centerLeft,
            child: Text(
              'Delete Account',
              style: textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w500,
                color: AppColors.red
              ),
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }

  Widget _buildSettingsItem(BuildContext context, IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: AppColors.white,size: 20,),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
          color: AppColors.white
        ),
      ),
      trailing: const Icon(Icons.chevron_right, color: AppColors.white,size: 20,),
      onTap: () {},
    );
  }
}
