import 'package:dinereel/src/themes/colors.dart';
import 'package:dinereel/src/features/auth/screens/login_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../routing/routing_function.dart';
import '../widgets/video_controller_widget.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const VideoPlayerWidget(
          videoUrl:
              'https://player.vimeo.com/external/376204686.hd.mp4?s=4014d6c498512ff5908a1a17dd05fd346954944f&profile_id=174&oauth2_token_id=57447761',
        ),
        Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: AppColors.secondaryLightColor.withOpacity(.01)),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 177),
            child: Image.asset('assets/auth/images/dinereel_logo.png'),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(Routes().createRoute(const LoginPage()));
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 14),
              margin: const EdgeInsets.only(bottom: 111, left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: const LinearGradient(colors: [
                  AppColors.primaryGradientDeep,
                  AppColors.primaryGradientLight
                ]),
              ),
              child: Row(
                children: [
                  const Spacer(),
                  Text(
                    "get_started".tr(),
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
