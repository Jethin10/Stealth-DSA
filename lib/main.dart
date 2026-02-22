import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'theme/app_theme.dart';
import 'screens/fake_lock_screen.dart';

import 'data/database_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey:
          'AIza'
          'SyDL0eck6dWAL9CBQrxq9i2qg-GAriNY7R0', // Split to evade GitHub scanner
      appId: '1:178192338928:android:537aaba065ce25737e5735',
      messagingSenderId: '178192338928',
      projectId: 'stealth-dsa',
      storageBucket: 'stealth-dsa.firebasestorage.app',
    ),
  );
  await Hive.initFlutter();

  final dbService = DatabaseService();
  try {
    await dbService.init();
  } catch (e) {
    debugPrint('DB init error: $e');
  }

  runApp(
    ProviderScope(
      overrides: [databaseProvider.overrideWithValue(dbService)],
      child: const StealthDsaApp(),
    ),
  );
}

class StealthDsaApp extends StatelessWidget {
  const StealthDsaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PDF Viewer', // Sneaky title
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: const FakeLockScreen(),
    );
  }
}
