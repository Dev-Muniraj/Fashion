import 'package:fashion_design/features/closet/page/saved_page/widgets/custom_saved_file.dart';
import 'package:flutter/material.dart';

import '../../../../utils/shared/constants.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: () {},
            child: const Icon(Icons.search),
          ),
          kSizedBoxWidth(),
        ],
        title: Text("Saved",
            style: Theme.of(context).textTheme.headlineSmall),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff0591BD), Color(0xff6BD5D5)],
              begin: Alignment.topRight,
              end: Alignment.topLeft,
            ),
          ),
        ),
      ),
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8,left: 8,right: 8),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              width: 132,
              decoration: BoxDecoration(
                color: const Color(0xff6BD5D5),
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Text("My Saved File"),
            ),
          ),
          const Divider(),
          const CustomSavedScreen(),
        ],
      ),
    );
  }
}
