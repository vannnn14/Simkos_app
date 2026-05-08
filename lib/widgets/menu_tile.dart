import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class MenuTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback? onTap;

  const MenuTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: AppRadius.lg,
      onTap: onTap,

      child: Container(
        padding: const EdgeInsets.all(16),

        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: AppRadius.lg,
          border: Border.all(
            color: AppColors.border,
            width: 0.5,
          ),
        ),

        child: Row(
          children: [

            // ─── Icon Box ─────────────────────────
            Container(
              width: 52,
              height: 52,

              decoration: BoxDecoration(
                color: AppColors.primary50,
                borderRadius: BorderRadius.circular(14),
              ),

              child: Icon(
                icon,
                color: AppColors.primary600,
              ),
            ),

            const SizedBox(width: 14),

            // ─── Text ─────────────────────────────
            Expanded(
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,

                children: [

                  Text(
                    title,
                    style: AppText.h3,
                  ),

                  const SizedBox(height: 4),

                  Text(
                    subtitle,
                    style: AppText.bodyMuted,
                  ),
                ],
              ),
            ),

            // ─── Arrow ────────────────────────────
            const Icon(
              Icons.chevron_right_rounded,
              color: AppColors.textSecondary,
            ),
          ],
        ),
      ),
    );
  }
}