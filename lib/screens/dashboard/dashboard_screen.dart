import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../widgets/menu_tile.dart';
import '../../widgets/stat_card.dart';
import '../../widgets/bottom_nav.dart';
import '../penghuni/penghuni_screen.dart';
import '../tagihan/biaya_bulanan_screen.dart';
import '../rekap/rekap_pembayaran_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgPage,

      bottomNavigationBar: BottomNav(
        currentIndex: 0,
        onTap: (index) {},
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: AppSpacing.pagePadding,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // ─── Header Card ─────────────────────────
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),

                decoration: BoxDecoration(
                  color: AppColors.primary600,
                  borderRadius: AppRadius.xl,
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,

                      children: [

                        Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,

                          children: [

                            const Text(
                              'Halo, Ibu Rasyid',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),

                            const SizedBox(height: 4),

                            Text(
                              'Wisma Al Rasyid · Mei 2026',
                              style: AppText.small.copyWith(
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),

                        Container(
                          width: 48,
                          height: 48,

                          decoration: BoxDecoration(
                            color: AppColors.primary400,
                            borderRadius:
                                BorderRadius.circular(14),
                          ),

                          child: const Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 28),

                    Text(
                      'Terkumpul bulan ini',
                      style: AppText.small.copyWith(
                        color: Colors.white70,
                      ),
                    ),

                    const SizedBox(height: 6),

                    const Text(
                      'Rp 840.000',
                      style: AppText.amountHero,
                    ),

                    const SizedBox(height: 16),

                    LinearProgressIndicator(
                      value: 0.6,
                      borderRadius: BorderRadius.circular(20),
                      backgroundColor: Colors.white24,
                      color: Colors.white,
                    ),

                    const SizedBox(height: 10),

                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,

                      children: [

                        Text(
                          'Target Rp 1.400.000',
                          style: AppText.small.copyWith(
                            color: Colors.white70,
                          ),
                        ),

                        Text(
                          '7/12 lunas',
                          style: AppText.small.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 28),

              // ─── Statistik ──────────────────────────
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics:
                    const NeverScrollableScrollPhysics(),

                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 1.45,

                children: const [

                  StatCard(
                    title: 'Total pemasukan',
                    value: 'Rp 12.450.000',
                    subtitle: 'April 2026',
                  ),

                  StatCard(
                    title: 'Penghuni aktif',
                    value: '12',
                    subtitle: 'Orang',
                  ),

                  StatCard(
                    title: 'Belum bayar',
                    value: '5',
                    subtitle: 'Orang',
                  ),

                  StatCard(
                    title: 'Total tagihan',
                    value: 'Rp 7.240.000',
                    subtitle: 'April 2026',
                  ),
                ],
              ),

              const SizedBox(height: 32),

              // ─── Menu ───────────────────────────────
              const Text(
                'Menu utama',
                style: AppText.h3,
              ),

              const SizedBox(height: 16),

              MenuTile(
                icon: Icons.receipt_long_rounded,
                title: 'Biaya bulanan',
                subtitle: 'Atur biaya bulan ini',

                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                          const BiayaBulananScreen(),
                    ),
                  );
                },
              ),

              const SizedBox(height: 12),

              MenuTile(
                icon: Icons.bar_chart_rounded,
                title: 'Rekap pembayaran',
                subtitle: 'Siapa sudah bayar',

                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                          const RekapPembayaranScreen(),
                    ),
                  );
                },
              ),

              const SizedBox(height: 12),

              MenuTile(
                icon: Icons.people_alt_rounded,
                title: 'Data penghuni',
                subtitle: 'Kelola nomor & kamar',

                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                          const PenghuniScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

}