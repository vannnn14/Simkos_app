import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class RekapPembayaranScreen extends StatelessWidget {
  const RekapPembayaranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgPage,

      appBar: AppBar(
        title: const Text('Rekap Pembayaran'),
      ),

      body: SingleChildScrollView(
        padding: AppSpacing.pagePadding,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // ─── Ringkasan ─────────────────────────
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: AppColors.primary600,
                borderRadius: AppRadius.xl,
              ),

              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,

                children: [

                  const Text(
                    'Rekap Mei 2026',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  const SizedBox(height: 20),

                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,

                    children: [

                      _summaryItem(
                        title: 'Lunas',
                        value: '7',
                      ),

                      _summaryItem(
                        title: 'Belum',
                        value: '5',
                      ),

                      _summaryItem(
                        title: 'Total',
                        value: '12',
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 28),

            // ─── List Penghuni ─────────────────────
            const Text(
              'Status penghuni',
              style: AppText.h3,
            ),

            const SizedBox(height: 16),

            _paymentCard(
              nama: 'Ahmad Fauzi',
              kamar: 'Kamar A1',
              status: 'Lunas',
            ),

            const SizedBox(height: 12),

            _paymentCard(
              nama: 'Siti Nurhaliza',
              kamar: 'Kamar B2',
              status: 'Belum bayar',
            ),

            const SizedBox(height: 12),

            _paymentCard(
              nama: 'Rizky Saputra',
              kamar: 'Kamar C1',
              status: 'Lunas',
            ),
          ],
        ),
      ),
    );
  }

  // ─── Summary Item ───────────────────────────────
  Widget _summaryItem({
    required String title,
    required String value,
  }) {
    return Column(
      children: [

        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 4),

        Text(
          title,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  // ─── Payment Card ───────────────────────────────
  Widget _paymentCard({
    required String nama,
    required String kamar,
    required String status,
  }) {
    final bool lunas = status == 'Lunas';

    return Container(
      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: AppRadius.lg,
      ),

      child: Row(
        children: [

          CircleAvatar(
            radius: 24,
            backgroundColor: AppColors.primary50,

            child: Text(
              nama[0],
              style: const TextStyle(
                color: AppColors.primary600,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(width: 14),

          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,

              children: [

                Text(
                  nama,
                  style: AppText.h3,
                ),

                const SizedBox(height: 4),

                Text(
                  kamar,
                  style: AppText.bodyMuted,
                ),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 6,
            ),

            decoration: BoxDecoration(
              color: lunas
                  ? AppColors.successBg
                  : AppColors.warningBg,

              borderRadius: AppRadius.pill,
            ),

            child: Text(
              status,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w600,
                color: lunas
                    ? AppColors.successText
                    : AppColors.warningText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}