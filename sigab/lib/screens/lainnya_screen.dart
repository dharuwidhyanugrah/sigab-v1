import 'package:flutter/material.dart';
import 'tempat_evakuasi_screen.dart';
import 'tips_mitigasi_screen.dart';

class LainnyaScreen extends StatelessWidget {
  const LainnyaScreen({super.key});

  Widget _buildImageCard(String title, String imagePath, VoidCallback? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        height: 160,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Stack(
            children: [
              // Image
              Image.asset(
                imagePath,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
              // Gradient Overlay
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0),
                      Colors.black.withOpacity(0.7),
                    ],
                  ),
                ),
              ),
              // Title
              Positioned(
                left: 16,
                bottom: 16,
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              const Center(
                child: Text(
                  'Lainnya',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              const SizedBox(height: 16),
              _buildImageCard(
                'Tempat Evakuasi',
                'assets/images/tempat_evakuasi.jpg',
                () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TempatEvakuasiScreen(),
                  ),
                ),
              ),
              _buildImageCard(
                'Tips Mitigasi',
                'assets/images/tips_mitigasi.jpeg',
                () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TipsMitigasiScreen(),
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
