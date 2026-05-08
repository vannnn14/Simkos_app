import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'theme/app_theme.dart';
import 'screens/auth/login_screen.dart';

// Sementara pakai placeholder screen,
// nanti diganti import screen asli satu per satu
void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Status bar transparan agar HeroHeader terlihat rapi
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
  ));

  // Kunci orientasi portrait saja
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const SimkosApp());
}

class SimkosApp extends StatelessWidget {
  const SimkosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SIMKOS',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const LoginScreen(),
      // Nanti routes diisi:
      // routes: {
      //   '/login':     (ctx) => const LoginScreen(),
      //   '/dashboard': (ctx) => const DashboardScreen(),
      //   '/tagihan':   (ctx) => const InputTagihanScreen(),
      //   '/preview-wa':(ctx) => const PreviewWaScreen(),
      //   '/rekap':     (ctx) => const RekapScreen(),
      //   '/penghuni':  (ctx) => const PenghuniScreen(),
      // },
    );
  }
}

// ─── Placeholder sementara ────────────────────────────────────────────────────
class PlaceholderHome extends StatelessWidget {
  const PlaceholderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.light.scaffoldBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 72, height: 72,
              decoration: BoxDecoration(
                color: AppColors.primary600,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(Icons.home_rounded,
                color: AppColors.white, size: 40),
            ),
            const SizedBox(height: 16),
            const Text('SIMKOS',
              style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w700,
                color: AppColors.primary600,
              )),
            const SizedBox(height: 6),
            Text('Wisma Al Rasyid · Purbalingga',
              style: AppText.bodyMuted),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Mulai (Login Screen coming soon)'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}