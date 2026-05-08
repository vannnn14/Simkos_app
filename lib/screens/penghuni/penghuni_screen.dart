import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import 'tambah_penghuni_screen.dart';

class PenghuniScreen extends StatelessWidget {
  const PenghuniScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgPage,

      appBar: AppBar(
        title: const Text('Data Penghuni'),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primary600,
        onPressed: () {
            Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const TambahPenghuniScreen(),
      ),
    );
  },

        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),

      body: ListView(
        padding: AppSpacing.pagePadding,
        children: [

          _penghuniCard(
            nama: 'Ahmad Fauzi',
            kamar: 'Kamar A1',
            phone: '081234567890',
            status: 'Lunas',
          ),

          const SizedBox(height: 12),

          _penghuniCard(
            nama: 'Siti Nurhaliza',
            kamar: 'Kamar B2',
            phone: '089876543210',
            status: 'Belum bayar',
          ),
        ],
      ),
    );
  }

  Widget _penghuniCard({
    required String nama,
    required String kamar,
    required String phone,
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
                  '$kamar • $phone',
                  style: AppText.bodyMuted,
                ),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
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