import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class TambahPenghuniScreen extends StatelessWidget {
  const TambahPenghuniScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgPage,

      appBar: AppBar(
        title: const Text('Tambah Penghuni'),
      ),

      body: SingleChildScrollView(
        padding: AppSpacing.pagePadding,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // ─── Nama ───────────────────────────────
            const Text(
              'Nama penghuni',
              style: AppText.label,
            ),

            const SizedBox(height: 8),

            const TextField(
              decoration: InputDecoration(
                hintText: 'Masukkan nama penghuni',
                prefixIcon: Icon(Icons.person),
              ),
            ),

            const SizedBox(height: 20),

            // ─── Nomor WA ───────────────────────────
            const Text(
              'Nomor WhatsApp',
              style: AppText.label,
            ),

            const SizedBox(height: 8),

            const TextField(
              keyboardType: TextInputType.phone,

              decoration: InputDecoration(
                hintText: '08xxxxxxxxxx',
                prefixIcon: Icon(Icons.phone),
              ),
            ),

            const SizedBox(height: 20),

            // ─── Kamar ──────────────────────────────
            const Text(
              'Nomor kamar',
              style: AppText.label,
            ),

            const SizedBox(height: 8),

            const TextField(
              decoration: InputDecoration(
                hintText: 'Contoh: A1',
                prefixIcon: Icon(Icons.meeting_room),
              ),
            ),

            const SizedBox(height: 36),

            // ─── Tombol Simpan ─────────────────────
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Data penghuni berhasil disimpan',
                    ),
                  ),
                );
              },

              child: const Text('Simpan Penghuni'),
            ),
          ],
        ),
      ),
    );
  }
}