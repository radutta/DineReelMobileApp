import 'package:dinereel/src/features/auth/screens/login_page.dart';
import 'package:flutter/material.dart';
import '../../../common_widgets/primary_regular_action_button.dart';
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
              'https://player.vimeo.com/external/523474783.hd.mp4?s=747f9f71954919fc632799b581b4b478cf8494e2&profile_id=174&oauth2_token_id=57447761',
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 177),
            child: Image.asset('assets/images/dinereel_logo.png'),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 111, left: 20, right: 20),
            child: PrimaryRegularActionButton(
              text: 'Get Started',
              action: () {
                Navigator.of(context)
                    .push(Routes().createRoute(const LoginPage()));
              },
              disable: false,
            ),
          ),
        )
      ],
    ));
  }
}
