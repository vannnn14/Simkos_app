import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class StatCard extends StatelessWidget {
  final String title;
  final String value;
  final String subtitle;

  const StatCard({
    super.key,
    required this.title,
    required this.value,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: AppRadius.lg,
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,

        children: [

          Text(
            title,
            style: AppText.bodyMuted,
          ),

          const SizedBox(height: 10),

          Text(
            value,
            style: AppText.h2,
          ),

          const SizedBox(height: 4),

          Text(
            subtitle,
            style: AppText.small,
          ),
        ],
      ),
    );
  }
}