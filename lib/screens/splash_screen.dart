import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      if (mounted) {
        Navigator.pushReplacementNamed(context, 'home');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F9F8),
      body: Stack(
        children: [
          Positioned(
            top: -300,
            right: -310,
            child: Container(
              width: 800,
              height: 800,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    const Color(0xFF00F2FE).withOpacity(0.45),
                    const Color(0xFF00B4D8).withOpacity(0.15),
                    Colors.transparent,
                  ],
                  stops: const [0.0, 0.5, 1.0],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 40.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  SizedBox(
                    width: 280,
                    height: 200,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        // 1. الطبقة الخلفية: الأكواد البرمجية الباهتة
                        Positioned.fill(
                          child: Opacity(
                            opacity: 0.25, // شفافة عشان تظهر كخلفية ورأء اللوجو
                            child: Center(
                              child: Text(
                                '''
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Flutter Code'),
        ),
      ),
    );
  }
}
                ''',
                                style: TextStyle(
                                  fontFamily: 'monospace', // خط البرمجة الثابت
                                  fontSize: 11,
                                  color: Color(0xFF0077B6),
                                  height: 1.4,
                                ),
                              ),
                            ),
                          ),
                        ),

                        const FlutterLogo(size: 110),

                        // 2. طبقة الوهج (Gglow Effect) خلف اللوجو مباشرة

                        // 3. الطبقة الأمامية: لوجو فلاتر الأساسي بتصميم أنيق
                      ],
                    ),
                  ),
                  Text(
                    'FLUTTER\nROADMAP\n& QUIZ',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF1E293B),
                      letterSpacing: 1.2,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2.5,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Color(0xFF00B4D8),
                          ),
                        ),
                      ),
                      SizedBox(width: 12),
                      Text(
                        'Loading...',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF64748B),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
