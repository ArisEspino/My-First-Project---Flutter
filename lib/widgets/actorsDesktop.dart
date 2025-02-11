import 'package:flutter/material.dart';

import '../constant/index.dart';

class ActorsDesktop extends StatelessWidget {
  const ActorsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //Social
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 450,
          ),
          child: Wrap(spacing: 5.0, runSpacing: 5.0, children: [
            for (int i = 0; i < social_items.length; i++)
              Container(
                  width: 200,
                  decoration: BoxDecoration(
                      color: WickedColors.textAccent,
                      borderRadius: BorderRadius.circular(5)),
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    leading: Image.asset(
                      social_items[i]["img"],
                    ),
                    title: Text(social_items[i]["title"]),
                  ))
          ]),
        ),
        const SizedBox(width: 50),
        //Actors
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 500,
            ),
            child: Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              children: [
                for (int i = 0; i < actors_items.length; i++)
                  Chip(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 16.0),
                    backgroundColor: WickedColors.navbarPink,
                    label: Text(actors_items[i]["title"]),
                    avatar: Image.asset(actors_items[i]["img"]),
                  )
              ],
            ),
          ),
        )
      ],
    );
  }
}
