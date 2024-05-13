import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:franga_agent/screens/app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:franga_agent/screens/connexion/onboarding_page.dart';
import 'package:franga_agent/screens/connexion/splash_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(const ProviderScope(child:MyApp() ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
      
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
       home: const AppScreen(),
       // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}


