import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class BiayaBulananScreen extends StatelessWidget {
  const BiayaBulananScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgPage,

      appBar: AppBar(
        title: const Text('Biaya Bulanan'),
      ),

      body: SingleChildScrollView(
        padding: AppSpacing.pagePadding,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // ─── Header Info ────────────────────────
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(18),

              decoration: BoxDecoration(
                color: AppColors.primary50,
                borderRadius: AppRadius.lg,
              ),

              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,

                children: [

                  const Text(
                    'Biaya bulan Mei 2026',
                    style: AppText.h3,
                  ),

                  const SizedBox(height: 6),

                  Text(
                    'Atur biaya utilitas kos bulan ini',
                    style: AppText.bodyMuted,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 28),

            // ─── Listrik ───────────────────────────
            const Text(
              'Biaya listrik',
              style: AppText.label,
            ),

            const SizedBox(height: 8),

            const TextField(
              keyboardType: TextInputType.number,

              decoration: InputDecoration(
                hintText: 'Contoh: 100000',
                prefixIcon: Icon(Icons.bolt),
              ),
            ),

            const SizedBox(height: 20),

            // ─── Air ───────────────────────────────
            const Text(
              'Biaya air',
              style: AppText.label,
            ),

            const SizedBox(height: 8),

            const TextField(
              keyboardType: TextInputType.number,

              decoration: InputDecoration(
                hintText: 'Contoh: 50000',
                prefixIcon: Icon(Icons.water_drop),
              ),
            ),

            const SizedBox(height: 20),

            // ─── Wifi ──────────────────────────────
            const Text(
              'Biaya WiFi',
              style: AppText.label,
            ),

            const SizedBox(height: 8),

            const TextField(
              keyboardType: TextInputType.number,

              decoration: InputDecoration(
                hintText: 'Contoh: 75000',
                prefixIcon: Icon(Icons.wifi),
              ),
            ),

            const SizedBox(height: 20),

            // ─── Sampah ────────────────────────────
            const Text(
              'Biaya sampah',
              style: AppText.label,
            ),

            const SizedBox(height: 8),

            const TextField(
              keyboardType: TextInputType.number,

              decoration: InputDecoration(
                hintText: 'Contoh: 10000',
                prefixIcon: Icon(Icons.delete_outline),
              ),
            ),

            const SizedBox(height: 32),

            // ─── Total ─────────────────────────────
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: AppRadius.lg,
              ),

              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,

                children: [

                  Text(
                    'Estimasi total biaya',
                    style: AppText.bodyMuted,
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    'Rp 235.000',
                    style: AppText.h1,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 36),

            // ─── Tombol ────────────────────────────
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Biaya bulanan berhasil disimpan',
                    ),
                  ),
                );
              },

              child: const Text('Simpan Biaya'),
            ),
          ],
        ),
      ),
    );
  }
}