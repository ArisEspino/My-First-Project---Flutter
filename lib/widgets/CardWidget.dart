import 'package:flutter/material.dart';
import 'package:my_flutter_web_app/utils/projects_utils.dart';

import '../constant/index.dart';
import 'dart:js' as js;

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({super.key, required this.project});

  final ProjectUtils project;

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
          Container(
            clipBehavior: Clip.antiAlias,
            height: 280.0,
            width: 250.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: WickedColors.textPrimary),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                //Image
                Image.asset(
                  project.image,
                  height: 140,
                  width: 250,
                  fit: BoxFit.cover,
                ),
                //Title
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 5, 12, 12),
                  child: Text(
                    project.title,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: WickedColors.scaffoldBg),
                  ),
                ),
                //SubTitle
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
                  child: Text(
                    project.subtitle,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        color: WickedColors.scaffoldBg),
                  ),
                ),
                const Spacer(),
                //Footer
                Container(
                  color: WickedColors.navbarGreen,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  child: Row(
                    children: [
                      Text(
                        "Available on:",
                        style: TextStyle(
                            color: WickedColors.scaffoldBg,
                            fontWeight: FontWeight.bold,
                            fontSize: 10),
                      ),
                      const Spacer(),
                      if (project.movieLink != null)
                        Padding(
                          padding: const EdgeInsets.only(left: 6),
                          child: InkWell(
                            onTap: () {
                              js.context
                                  .callMethod("open", [project.movieLink]);
                            },
                            child: Image.asset(
                              "lib/assets/projects/film.png",
                              color: WickedColors.textPrimary,
                            ),
                          ),
                        ),
                      if (project.webLink != null)
                        Padding(
                          padding: const EdgeInsets.only(left: 6),
                          child: InkWell(
                            onTap: () {
                              js.context.callMethod("open", [project.webLink]);
                            },
                            child: Image.asset(
                              "lib/assets/projects/web.png",
                              color: WickedColors.textPrimary,
                            ),
                          ),
                        )
                    ],
                  ),
                )
              ],
            ),
          )

          //Work project card
        ],
      ),
    );
  }
}
