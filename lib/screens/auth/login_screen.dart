import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../dashboard/dashboard_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgPage,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: AppSpacing.pagePadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),

              // ─── Hero Header ─────────────────────────────
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: AppColors.primary600,
                  borderRadius: AppRadius.xl,
                ),
                child: Column(
                  children: [
                    Container(
                      width: 72,
                      height: 72,
                      decoration: BoxDecoration(
                        color: AppColors.primary400,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(
                        Icons.home_rounded,
                        color: AppColors.white,
                        size: 40,
                      ),
                    ),
                    const SizedBox(height: 18),
                    const Text(
                      'SIMKOS',
                      style: AppText.amountHero,
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Wisma Al Rasyid · Purbalingga',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 36),

              // ─── Welcome Text ────────────────────────────
              const Text(
                'Selamat datang',
                style: AppText.h2,
              ),

              const SizedBox(height: 6),

              Text(
                'Masuk sebagai pengelola kos',
                style: AppText.bodyMuted,
              ),

              const SizedBox(height: 28),

              // ─── Nomor WA ────────────────────────────────
              const Text(
                'Nomor WhatsApp',
                style: AppText.label,
              ),

              const SizedBox(height: 8),

              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: '08xxxxxxxxxx',
                  prefixIcon: const Icon(
                    Icons.phone_rounded,
                    color: AppColors.textSecondary,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: AppRadius.md,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // ─── Password ────────────────────────────────
              const Text(
                'Password',
                style: AppText.label,
              ),

              const SizedBox(height: 8),

              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: '••••••••',
                  prefixIcon: const Icon(
                    Icons.lock_rounded,
                    color: AppColors.textSecondary,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: AppRadius.md,
                  ),
                ),
              ),

              const SizedBox(height: 32),

              // ─── Button Login ────────────────────────────
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const DashboardScreen(),
                    ),
                  );
                },
                child: const Text('Masuk'),
              ),

              const SizedBox(height: 16),

              // ─── Lupa Password ───────────────────────────
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Lupa password? Reset di sini',
                    style: TextStyle(
                      color: AppColors.primary600,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
