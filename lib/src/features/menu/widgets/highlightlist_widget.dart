import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'highlight_widget.dart';

List<String> highlights = [
  'offers'.tr(),
  'puja'.tr(),
  'kitchen'.tr(),
  'events'.tr(),
  'offers'.tr(),
  'puja'.tr(),
  'kitchen'.tr(),
  'events'.tr(),
  'happy'.tr(),
  'offers'.tr(),
  'puja'.tr(),
  'kitchen'.tr(),
  'events'.tr(),
  'happy'.tr(),
];

class HighlightListWidget extends StatelessWidget {
  const HighlightListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 100,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: highlights.length,
            itemBuilder: (context, index) {
              return HighlightWidget(
                image: 'assets/auth/images/home_bg.png',
                title: highlights[index],
              );
            }),
      ),
    );
  }
}
