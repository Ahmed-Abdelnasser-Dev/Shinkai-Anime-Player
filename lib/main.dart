import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shinkai/core/routing/app_router.dart';
import 'package:shinkai/shinkai_app.dart';
import 'package:flutter/services.dart';


// Configuration constants for the font
const String _customFontFamily = 'poppins'; 
const String _customFontPath = 'assets/fonts/poppins/poppins-Regular.ttf';


Future<void> _preloadCustomFont() async {
  try {
    
    final ByteData fontData = await rootBundle.load(_customFontPath);
    final fontLoader = FontLoader(_customFontFamily);
    
    fontLoader.addFont(Future.value(fontData.buffer.asByteData()));
    
    await fontLoader.load();
  } catch (e) {
    if (kDebugMode) {
      print('Error preloading custom font $_customFontFamily: $e');
    }
  }
}

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  
  await _preloadCustomFont(); 

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(ShinkaiApp(appRouter: AppRouter()));
}
