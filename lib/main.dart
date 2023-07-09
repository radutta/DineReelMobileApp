import 'package:dinereel/src/cubit/cubit/navigationcontroller_cubit.dart';
import 'package:dinereel/src/features/auth/screens/welcome_page.dart';
import 'package:dinereel/src/features/order/cubit/order_cubit.dart';
import 'package:dinereel/src/themes/app_themes.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      supportedLocales: const [Locale('en', 'UK')],
      path:
          'lib/src/localization', // <-- change the path of the translation files
      fallbackLocale: const Locale('en', 'UK'),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NavigationcontrollerCubit()),
        BlocProvider(create: (context) => OrderControllerCubit())
      ],
      child: MaterialApp(
        title: 'Dinereel App',
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        theme: AppTheme.theme,
        home: const WelcomePage(),
      ),
    );
  }
}
