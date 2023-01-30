import 'package:bank_dashboard/Screen/login.dart';
import 'package:bank_dashboard/provider/provider.dart';
import 'package:bank_dashboard/ui/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => DashboardProvider())],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bank Dashboard',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kWhiteColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: kSecondaryColor2,
      ),
      home:  Myapp(),
    );
  }
}
