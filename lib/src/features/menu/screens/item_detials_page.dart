import 'package:flutter/material.dart';

import '../widgets/item_preview_slider.dart';

class ItemDetailsPage extends StatefulWidget {
  const ItemDetailsPage({super.key});

  @override
  State<ItemDetailsPage> createState() => _ItemDetailsPageState();
}

class _ItemDetailsPageState extends State<ItemDetailsPage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ItemPreviewSlider(),
        ],
      ),
    );
  }
}
