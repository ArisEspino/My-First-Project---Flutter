import 'package:flutter/material.dart';
import 'package:my_flutter_web_app/utils/projects_utils.dart';

import '../constant/index.dart';
import 'index.dart';

// ignore: camel_case_types
class Movies_Mago extends StatelessWidget {
  const Movies_Mago({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      width: screenWidth,
      child: Column(
        children: [
          //Work project title
          const Text(
            "Sequels to the film.",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: WickedColors.textPrimary),
          ),
          SizedBox(
            height: 50,
          ),
          Wrap(spacing: 25, runSpacing: 25, children: [
            for (int i = 0; i < Wicked_Movies.length; i++)
              ProjectCardWidget(
                project: Wicked_Movies[i],
              ),
          ]),
          //Work project card
        ],
      ),
    );
  }
}
