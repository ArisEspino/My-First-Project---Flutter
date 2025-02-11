import 'package:flutter/material.dart';

import '../constant/index.dart';

class ActorsMobile extends StatelessWidget {
  const ActorsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 500.0),
      child: Column(
        children: [
          //Social
          for (int i = 0; i < social_items.length; i++)
            Container(
              margin: EdgeInsets.only(bottom: 5.0),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: WickedColors.navbarLightGreen,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: ListTile(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                leading: Image.asset(
                  social_items[i]["img"],
                  width: 26.0,
                ),
                title: Text(social_items[i]["title"]),
              ),
            ),
          const SizedBox(height: 50),
          //Actors
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            alignment: WrapAlignment.center,
            children: [
              for (int i = 0; i < actors_items.length; i++)
                Chip(
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 16.0),
                  backgroundColor: WickedColors.navbarPink,
                  label: Text(actors_items[i]["title"]),
                  avatar: Image.asset(actors_items[i]["img"]),
                ),
            ],
          )
        ],
      ),
    );
  }
}
