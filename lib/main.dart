import 'package:camel_express_user/helpers/app_colors.dart';
import 'package:camel_express_user/helpers/text_style.dart';
import 'package:camel_express_user/screen/auth/create_new_password_screen.dart';
import 'package:camel_express_user/screen/auth/forget_password_email_screen.dart';
import 'package:camel_express_user/screen/auth/forget_password_phone_screen.dart';
import 'package:camel_express_user/screen/auth/forget_password_screen.dart';
import 'package:camel_express_user/screen/auth/login_screen.dart';
import 'package:camel_express_user/screen/auth/register_screen.dart';
import 'package:camel_express_user/screen/auth/verification_screen.dart';
import 'package:camel_express_user/screen/category_screen.dart';
import 'package:camel_express_user/screen/favorites_screen.dart';
import 'package:camel_express_user/screen/home_screen.dart';
import 'package:camel_express_user/screen/notification_screen.dart';
import 'package:camel_express_user/screen/stars_screen.dart';
import 'package:camel_express_user/screen/vendor_details_screen.dart';
import 'package:camel_express_user/screen/vendor_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            appBarTheme: AppBarTheme(
              toolbarHeight: 40.h,
              iconTheme: const IconThemeData(
                color: AppColors.black,
              ),
              centerTitle: true,
              elevation: 0,
              color: AppColors.white,
              titleTextStyle: GoogleFonts.poppins(
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              ),
            ),
          ),
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('ar'),
            Locale('en'),
          ],
          locale: const Locale('en'),
          // locale: Locale(Provider.of<LanguagesProvider>(context).languages),
          // initialRoute: '/login_screen',
          initialRoute: '/home_screen',
          routes: {
            '/login_screen': (context) => const LoginScreen(),
            '/register_screen': (context) => const RegisterScreen(),
            '/forget_password_screen': (context) =>
                const ForgetPasswordScreen(),
            '/forget_password_phone_screen': (context) =>
                const ForgetPasswordPhoneScreen(),
            '/forget_password_email_screen': (context) =>
                const ForgetPasswordEmailScreen(),
            '/verification_screen': (context) => const VerificationScreen(),
            '/create_new_password_screen': (context) =>
                const CreateNewPassword(),
            '/home_screen': (context) => const HomeScreen(),
            '/category_screen': (context) => const CategoryScreen(),
            '/vendor_screen': (context) => const VendorScreen(),
            '/vendor_details_screen': (context) => const VendorDetailsScreen(),
            '/notification_screen': (context) => const NotificationScreen(),
            '/stars_screen': (context) => const StarsScreen(),
            '/favorites_screen': (context) => const FavoritesScreen(),
          },
        );
      },
    );
  }
}
