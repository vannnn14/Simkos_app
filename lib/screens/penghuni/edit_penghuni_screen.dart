import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class EditPenghuniScreen extends StatelessWidget {
  final String nama;
  final String phone;
  final String kamar;

  const EditPenghuniScreen({
    super.key,
    required this.nama,
    required this.phone,
    required this.kamar,
  });

  @override
  Widget build(BuildContext context) {

    final TextEditingController namaController =
        TextEditingController(text: nama);

    final TextEditingController phoneController =
        TextEditingController(text: phone);

    final TextEditingController kamarController =
        TextEditingController(text: kamar);

    return Scaffold(
      backgroundColor: AppColors.bgPage,

      appBar: AppBar(
        title: const Text('Edit Penghuni'),
      ),

      body: SingleChildScrollView(
        padding: AppSpacing.pagePadding,

        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [

            // ─── Nama ─────────────────────────────
            const Text(
              'Nama penghuni',
              style: AppText.label,
            ),

            const SizedBox(height: 8),

            TextField(
              controller: namaController,

              decoration: const InputDecoration(
                hintText: 'Masukkan nama penghuni',
                prefixIcon: Icon(Icons.person),
              ),
            ),

            const SizedBox(height: 20),

            // ─── Nomor WA ─────────────────────────
            const Text(
              'Nomor WhatsApp',
              style: AppText.label,
            ),

            const SizedBox(height: 8),

            TextField(
              controller: phoneController,
              keyboardType: TextInputType.phone,

              decoration: const InputDecoration(
                hintText: '08xxxxxxxxxx',
                prefixIcon: Icon(Icons.phone),
              ),
            ),

            const SizedBox(height: 20),

            // ─── Kamar ────────────────────────────
            const Text(
              'Nomor kamar',
              style: AppText.label,
            ),

            const SizedBox(height: 8),

            TextField(
              controller: kamarController,

              decoration: const InputDecoration(
                hintText: 'Contoh: A1',
                prefixIcon: Icon(Icons.meeting_room),
              ),
            ),

            const SizedBox(height: 36),

            // ─── Tombol Simpan ───────────────────
            ElevatedButton(
              onPressed: () {

                ScaffoldMessenger.of(context)
                    .showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Perubahan berhasil disimpan',
                    ),
                  ),
                );

                Navigator.pop(context);
              },

              child: const Text(
                'Simpan Perubahan',
              ),
            ),
          ],
        ),
      ),
    );
  }
}