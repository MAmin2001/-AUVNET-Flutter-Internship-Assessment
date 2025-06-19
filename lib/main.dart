import 'package:auvnet_e_commerce_task/auvnet_app.dart';
import 'package:auvnet_e_commerce_task/core/routing/app_router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: 'AIzaSyD_0vhlN6_MyXLysI6Fq9kgeo8daN72-N8',
      appId: '1:292766126417:android:51cd9774ec17f328828370',
      messagingSenderId: '292766126417',
      projectId: 'auvnet-task-da739',
      storageBucket: 'auvnet-task-da739.firebasestorage.app',
    ),
  );
  runApp(AuvnetApp(appRouter: AppRouter()));
}
